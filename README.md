# TRACE Power Estimation Dataset

This repository releases the dataset used in **TRACE: A Toggle-Rate-Aware Self-Supervised
Circuit Encoder for RTL Power Estimation**. It provides **531 RTL design instances**, each
annotated with gate-level power labels, for pre-synthesis RTL power estimation.

For every design instance we release the RTL source code and its testbench(es), the PrimeTime
PX power reports, and the gate-level netlist produced by Design Compiler. Toggle activity
(VCD) is also included for the **RTLLM** and **held-out** subsets; the OpenCores VCD is
omitted because of its size (54 GB) and can be regenerated locally (see §6).

---

## 1. Dataset Composition

| Source | Description | Instances |
| --- | --- | ---: |
| OpenCores | 77 open-source IP cores × 3 synthesis variants | 231 |
| RTLLM | 50 LLM-generated modules × 5 variants (10 excluded, see §7) | 240 |
| Held-out test set | 6 designs × 10 variants | 60 |
| **Total** | | **531** |

The OpenCores and RTLLM subsets form the training corpus; the 6 held-out designs
(`accu16`, `mul8`, `cmp8`, `traffic`, `seqdet`, `bshift`) form the unseen evaluation set.

### Variant Generation and Data Augmentation

OpenCores projects typically span multiple Verilog files. When generating variants, only a
small subset of these files is lightly modified so that the resulting design remains
synthesizable and functionally correct. During pretraining, random identifier renaming and
statement reordering are further applied to increase the divergence of the RTL token
sequences across the different views of the same design.

## 2. Directory Structure

```
opencores/
  verilog/        RTL + testbenches   (datasetnobound / datasetnobound2 / datasetnobound3)
  pt_result/      power reports       (pt_reportsnobound{,2,22,3,33})
  netlist/        gate-level netlists (nobound / nobound2 / nobound3)
RTLLM/
  verilog/        RTL + testbenches   (verilog1 … verilog5)
  vcd_result/     toggle activity
  pt_reports/     power reports
  netlist/        gate-level netlists
testset/
  <design>/       RTL + testbenches   (6 designs × 10 variants v1 … v10)
  testset_vcd/    toggle activity
  testset_pt_reports/  power reports
  testset_netlist/     gate-level netlists
```

Each OpenCores project directory holds an `rtl/` folder (synthesizable Verilog) and a
`testbench/` folder (some projects add a `testbench2/`); RTLLM modules store testbenches in
`testbench1/` and `testbench2/` next to the flat `.v` files; the held-out designs keep their
testbenches in `testbench1/`, `testbench2/`, and `testbench3/`.

**Variant naming.** OpenCores designs are synthesized in three configurations
(`nobound`/`nobound2`/`nobound3`); variants 2 and 3 are exercised by two testbenches each, so
their power reports are split across two directories (`pt_reportsnobound2` +
`pt_reportsnobound22`, and `pt_reportsnobound3` + `pt_reportsnobound33`). RTLLM modules have
five LLM-generated variants (`verilog1` … `verilog5`), each with two testbenches. The held-out
designs have ten variants (`v1` … `v10`), each with three testbenches.

## 3. Tool Flow & Technology Library

| Stage | Tool |
| --- | --- |
| Logic synthesis | Synopsys Design Compiler (V-2023.12) |
| Simulation / toggle activity | Synopsys VCS |
| Power analysis | Synopsys PrimeTime PX (V-2023.12) |

- **Standard cell library:** TSMC 28 nm HPC+ 12-track — `tcbn28hpcplusbwp12t30p140`
- **Operating conditions:** SS (slow–slow) corner, 0.81 V, 125 °C
- **Wire load model:** ZeroWireload (segmented mode)

## 4. Standard Cell Count Distribution

Design complexity is measured by the **number of standard cells** (instance count reported by
Design Compiler, *not* the equivalent NAND2 gate count). The distribution over the 531
instances is:

| Number of standard cells | Instances | Ratio |
| --- | ---: | ---: |
| < 100 | 220 | 41.4 % |
| 100 – 1,000 | 171 | 32.2 % |
| 1,000 – 10,000 | 85 | 16.0 % |
| 10,000 – 100,000 | 42 | 7.9 % |
| > 100,000 | 13 | 2.4 % |

Minimum 3, maximum 271,303, median 178, 90th percentile 12,519.

## 5. File Formats

- **RTL** (`*.v`): synthesizable Verilog source of the top module; testbenches are stored in
  `testbench/` (OpenCores) or `testbench1/`/`testbench2/` (and `testbench3/` for the held-out
  set) subdirectories.
- **Toggle activity** (`*.vcd`): per-signal value changes produced by VCS simulation of the
  corresponding testbench. Included for the RTLLM and held-out subsets only; see §6 for
  OpenCores.
- **Power reports** (one directory per design × testbench):
  - `power_hierarchy.rpt` — hierarchical power broken down per module instance;
  - `power_verbose.rpt` — detailed per-cell power;
  - `switching_activity.rpt` — per-net toggle/static probabilities.
- **Netlist** (`{top}_gate.v`): gate-level netlist written by Design Compiler, named after the
  top module.

## 6. Regenerating OpenCores Toggle Activity (VCD)

The OpenCores VCD files are too large to host (54 GB) and are omitted from this repository;
the RTLLM and held-out VCD files are included under `RTLLM/vcd_result/` and
`testset/testset_vcd/`. To regenerate the OpenCores toggle activity, simulate each OpenCores
testbench against its RTL with a Verilog simulator that supports VCD dumping, e.g. Synopsys
VCS:

```bash
vcs -full64 <rtl_files...> <testbench.v> -o simv
./simv                       # $dumpfile / $dumpvars in the testbench writes the .vcd
```

The resulting VCD contains the same per-signal toggle activity consumed by the dataset loader.

## 7. Data Quality — Excluded Instances

Ten RTLLM instances are excluded from the release: six that failed synthesis
(`clkgenerator` in all five variants, `float_multi` in variant 1) and four whose LLM-generated
variants collapsed to a negligible number of cells relative to their sibling variants
(`ROM` variants 1/5, `freq_divbyodd` variant 4, `comparator_4bit` variant 5). They are absent
from the RTL, VCD, power, and netlist directories.

## License

The OpenCores subset originates from OpenCores.org and is redistributed under the original
per-project licenses. Please refer to each project's license before commercial use.
