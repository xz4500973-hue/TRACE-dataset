/*
 * Milkymist VJ SoC
 * Copyright (C) 2007, 2008, 2009 Sebastien Bourdeauducq
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

(* keep_hierarchy = "yes" *) module hpdmc_ctlif #(
	parameter csr_addr = 4'h0
) (
	input sys_clk,
	input sys_rst,
	
	input [13:0] csr_a,
	input csr_we,
	input [31:0] csr_di,
	output reg [31:0] csr_do,
	
	output reg bypass,
	output reg sdram_rst,
	
	output reg sdram_cke,
	output reg sdram_cs_n,
	output reg sdram_we_n,
	output reg sdram_cas_n,
	output reg sdram_ras_n,
	output reg [12:0] sdram_adr,
	output reg [1:0] sdram_ba,
	
	output reg [2:0] tim_rp,
	output reg [2:0] tim_rcd,
	output reg tim_cas,
	output reg [10:0] tim_refi,
	output reg [3:0] tim_rfc,
	output reg [1:0] tim_wr,
	
	output reg idelay_rst,
	output reg idelay_ce,
	output reg idelay_inc,
	
	output reg dqs_psen,
	output reg dqs_psincdec,
	input dqs_psdone,

	input [1:0] pll_stat
);

reg psready;
always @(posedge sys_clk) begin
	if(dqs_psdone)
		psready <= 1'b1;
	else if(dqs_psen)
		psready <= 1'b0;
end

wire csr_selected = csr_a[13:10] == csr_addr;

/* Double-latching on pll_stat (asynchronous) */
reg [1:0] pll_stat1;
reg [1:0] pll_stat2;
always @(posedge sys_clk) begin
	pll_stat1 <= pll_stat;
	pll_stat2 <= pll_stat1;
end

// -- Next-state logic (combinational) --
reg				n_bypass, n_sdram_rst, n_sdram_cke;
reg				n_sdram_cs_n, n_sdram_we_n, n_sdram_cas_n, n_sdram_ras_n;
reg [12:0]		n_sdram_adr;
reg [1:0]		n_sdram_ba;
reg [2:0]		n_tim_rp, n_tim_rcd;
reg				n_tim_cas;
reg [10:0]		n_tim_refi;
reg [3:0]		n_tim_rfc;
reg [1:0]		n_tim_wr;
reg				n_idelay_rst, n_idelay_ce, n_idelay_inc;
reg				n_dqs_psen, n_dqs_psincdec;
reg [31:0]		n_csr_do;

always @(*) begin
	n_bypass    = bypass;
	n_sdram_rst = sdram_rst;
	n_sdram_cke = sdram_cke;
	n_sdram_cs_n= sdram_cs_n;
	n_sdram_we_n= sdram_we_n;
	n_sdram_cas_n=sdram_cas_n;
	n_sdram_ras_n=sdram_ras_n;
	n_sdram_adr = sdram_adr;
	n_sdram_ba  = sdram_ba;
	n_tim_rp    = tim_rp;
	n_tim_rcd   = tim_rcd;
	n_tim_cas   = tim_cas;
	n_tim_refi  = tim_refi;
	n_tim_rfc   = tim_rfc;
	n_tim_wr    = tim_wr;
	n_idelay_rst= 1'b0;
	n_idelay_ce = 1'b0;
	n_idelay_inc= 1'b0;
	n_dqs_psen  = 1'b0;
	n_dqs_psincdec = 1'b0;
	n_csr_do    = 32'd0;

	if(csr_selected) begin
		if(csr_we) begin
			case(csr_a[1:0])
				2'b00: begin
					n_bypass    = csr_di[0];
					n_sdram_rst = csr_di[1];
					n_sdram_cke = csr_di[2];
				end
				2'b01: begin
					n_sdram_cs_n = ~csr_di[0];
					n_sdram_we_n = ~csr_di[1];
					n_sdram_cas_n= ~csr_di[2];
					n_sdram_ras_n= ~csr_di[3];
					n_sdram_adr  = csr_di[16:4];
					n_sdram_ba   = csr_di[18:17];
				end
				2'b10: begin
					n_tim_rp   = csr_di[2:0];
					n_tim_rcd  = csr_di[5:3];
					n_tim_cas  = csr_di[6];
					n_tim_refi = csr_di[17:7];
					n_tim_rfc  = csr_di[21:18];
					n_tim_wr   = csr_di[23:22];
				end
				2'b11: begin
					n_idelay_rst = csr_di[0];
					n_idelay_ce  = csr_di[1];
					n_idelay_inc = csr_di[2];
					n_dqs_psen   = csr_di[3];
					n_dqs_psincdec = csr_di[4];
				end
			endcase
		end
		case(csr_a[1:0])
			2'b00: n_csr_do = {n_sdram_cke, n_sdram_rst, n_bypass};
			2'b01: n_csr_do = {n_sdram_ba, n_sdram_adr, 4'h0};
			2'b10: n_csr_do = {n_tim_wr, n_tim_rfc, n_tim_refi, n_tim_cas, n_tim_rcd, n_tim_rp};
			2'b11: n_csr_do = {pll_stat2, psready, 5'd0};
		endcase
	end
end

// -- Registered outputs --
always @(posedge sys_clk) begin
	if(sys_rst) begin
		bypass    <= 1'b1;
		sdram_rst <= 1'b1;
		sdram_cke <= 1'b0;
		sdram_cs_n<= 1'b1;
		sdram_we_n<= 1'b1;
		sdram_cas_n<=1'b1;
		sdram_ras_n<=1'b1;
		sdram_adr <= 13'd0;
		sdram_ba  <= 2'd0;
		tim_rp    <= 3'd2;
		tim_rcd   <= 3'd2;
		tim_cas   <= 1'b0;
		tim_refi  <= 11'd740;
		tim_rfc   <= 4'd8;
		tim_wr    <= 2'd2;
		idelay_rst<= 1'b0;
		idelay_ce <= 1'b0;
		idelay_inc<= 1'b0;
		dqs_psen  <= 1'b0;
		dqs_psincdec<=1'b0;
		csr_do    <= 32'd0;
	end else begin
		bypass    <= n_bypass;
		sdram_rst <= n_sdram_rst;
		sdram_cke <= n_sdram_cke;
		sdram_cs_n<= n_sdram_cs_n;
		sdram_we_n<= n_sdram_we_n;
		sdram_cas_n<=n_sdram_cas_n;
		sdram_ras_n<=n_sdram_ras_n;
		sdram_adr <= n_sdram_adr;
		sdram_ba  <= n_sdram_ba;
		tim_rp    <= n_tim_rp;
		tim_rcd   <= n_tim_rcd;
		tim_cas   <= n_tim_cas;
		tim_refi  <= n_tim_refi;
		tim_rfc   <= n_tim_rfc;
		tim_wr    <= n_tim_wr;
		idelay_rst<= n_idelay_rst;
		idelay_ce <= n_idelay_ce;
		idelay_inc<= n_idelay_inc;
		dqs_psen  <= n_dqs_psen;
		dqs_psincdec<=n_dqs_psincdec;
		csr_do    <= n_csr_do;
	end
end

endmodule