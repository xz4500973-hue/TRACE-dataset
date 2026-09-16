`timescale 1ns / 1ps

module tb_ca_prng();

    parameter CLK_HALF_PERIOD = 5;
    parameter [7:0] RULE_2   = 8'b00000010;
    parameter [7:0] RULE_90  = 8'b01011010;
    parameter [31:0] MIDDLE_BIT_INIT_PATTERN = 32'b00000000000000010000000000000000;
    parameter [31:0] COMPLEX_INIT_PATTERN    = 32'b01011000000000010000111000001100;
    parameter [31:0] TC1_RESPONSE = 32'b01110001010110000000111010001001;
    parameter [31:0] TC2_RESPONSE = 32'b10111101001101000001100001101001;
    parameter [31:0] TC3_RESPONSE = 32'b00000000000000000001000000000000;
    parameter [31:0] TC4_RESPONSE = 32'b10101010101010101010101010101010;

    reg           tb_clk;
    reg           tb_reset_n;
    reg [31:0]    tb_init_pattern_data;
    reg           tb_load_init_pattern;
    reg           tb_next_pattern;
    reg [7:0]     tb_update_rule;
    reg           tb_load_update_rule;
    wire [31:0]   tb_prng_data;

    integer num_errors;
    integer i, seed;

    ca_prng ca_prng_dut (
        .clk(tb_clk),
        .reset_n(tb_reset_n),
        .init_pattern_data(tb_init_pattern_data),
        .load_init_pattern(tb_load_init_pattern),
        .next_pattern(tb_next_pattern),
        .update_rule(tb_update_rule),
        .load_update_rule(tb_load_update_rule),
        .prng_data(tb_prng_data)
    );

    task check_pattern;
        input [31:0] expected_pattern;
        input [31:0] result_pattern;
        begin
            if (expected_pattern != result_pattern) begin
                $display("Error: Expected %b, got: %b", expected_pattern, result_pattern);
                num_errors = num_errors + 1;
            end
        end
    endtask

    task init_sim;
        begin
            tb_clk               = 0;
            tb_reset_n           = 0;
            tb_init_pattern_data = MIDDLE_BIT_INIT_PATTERN;
            tb_load_init_pattern = 1'b0;
            tb_next_pattern      = 1'b0;
            tb_update_rule       = 8'b00000000;
            tb_load_update_rule  = 1'b0;
            num_errors           = 0;
        end
    endtask

    task release_reset;
        begin
            #(20 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_reset_n = 1'b1;
        end
    endtask

    task test_tc1;
        begin
            $display("TC1: Default rule30, simple init pattern");
            #(4 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_load_init_pattern = 1'b1;
            @(negedge tb_clk) tb_load_init_pattern = 1'b0;
            @(negedge tb_clk) tb_next_pattern = 1'b1;
            #(100 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_next_pattern = 1'b0;
            check_pattern(TC1_RESPONSE, tb_prng_data);
        end
    endtask

    task test_tc2;
        begin
            $display("TC2: Default rule30, complex init pattern");
            @(negedge tb_clk)
            tb_init_pattern_data = COMPLEX_INIT_PATTERN;
            tb_load_init_pattern = 1'b1;
            @(negedge tb_clk) tb_load_init_pattern = 1'b0;
            tb_next_pattern = 1'b1;
            #(200 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_next_pattern = 1'b0;
            check_pattern(TC2_RESPONSE, tb_prng_data);
        end
    endtask

    task test_tc3;
        begin
            $display("TC3: Rule2, simple init pattern");
            @(negedge tb_clk)
            tb_update_rule      = RULE_2;
            tb_load_update_rule = 1'b1;
            tb_init_pattern_data = MIDDLE_BIT_INIT_PATTERN;
            tb_load_init_pattern = 1'b1;
            @(negedge tb_clk) begin
                tb_load_update_rule = 1'b0;
                tb_load_init_pattern = 1'b0;
                tb_next_pattern = 1'b1;
            end
            #(200 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_next_pattern = 1'b0;
            check_pattern(TC3_RESPONSE, tb_prng_data);
        end
    endtask

    task test_tc4;
        begin
            $display("TC4: Rule90 (Pascals triangle)");
            @(negedge tb_clk)
            tb_update_rule      = RULE_90;
            tb_load_update_rule = 1'b1;
            tb_init_pattern_data = MIDDLE_BIT_INIT_PATTERN;
            tb_load_init_pattern = 1'b1;
            @(negedge tb_clk) begin
                tb_load_update_rule = 1'b0;
                tb_load_init_pattern = 1'b0;
                tb_next_pattern = 1'b1;
            end
            #(30 * CLK_HALF_PERIOD);
            @(negedge tb_clk) tb_next_pattern = 1'b0;
            check_pattern(TC4_RESPONSE, tb_prng_data);
        end
    endtask

    // 新增：随机规则与随机初值测试，增加翻转覆盖
    task random_test;
        input [7:0] rule;
        input [31:0] init;
        integer steps;
        begin
            @(negedge tb_clk)
            tb_update_rule      = rule;
            tb_load_update_rule = 1'b1;
            tb_init_pattern_data = init;
            tb_load_init_pattern = 1'b1;
            @(negedge tb_clk) begin
                tb_load_update_rule = 1'b0;
                tb_load_init_pattern = 1'b0;
                tb_next_pattern = 1'b1;
            end
            steps = 100 + {$random(seed)} % 200;
            repeat(steps) @(posedge tb_clk);
            @(negedge tb_clk) tb_next_pattern = 1'b0;
        end
    endtask

    // 时钟
    always #CLK_HALF_PERIOD tb_clk = ~tb_clk;

    // 主流程
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("ca_prng.vcd");
        $dumpvars(0, tb_ca_prng);

        // 原有测试
        $display("   -- Testbench for ca_prng started --");
        init_sim;
        release_reset;

        test_tc1;
        test_tc2;
        test_tc3;
        test_tc4;

        // 额外随机测试，增加翻转
        seed = 22222;
        for (i = 0; i < 30; i = i + 1) begin
            random_test($random(seed) % 256, $random(seed));
        end

        if (num_errors == 0)
            $display("Simulation completed ok.");
        else
            $display("Simulation completed, but %d test cases had errors.", num_errors);

        $display("   -- Testbench stopped --");
        $finish;
    end

endmodule