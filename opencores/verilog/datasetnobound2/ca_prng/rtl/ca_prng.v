//========================================================================
// ca_prng.v - VARIANT: generate for-loop replacing 32 case blocks
//========================================================================
(* keep_hierarchy = "yes" *) module ca_prng(
    input wire clk, reset_n,
    input wire [31:0] init_pattern_data,
    input wire load_init_pattern, next_pattern,
    input wire [7:0] update_rule,
    input wire load_update_rule,
    output wire [31:0] prng_data
);
    parameter [7:0] DEFAULT_RULE = 8'b00011110;
    reg [31:0] ca_state_reg;
    reg [31:0] ca_state_new;
    reg ca_state_we;
    reg [7:0] update_rule_reg;
    reg [31:0] tmp_ca_state_new;

    assign prng_data = ca_state_reg;

    always @(posedge clk) begin : reg_update
        if (!reset_n) begin
            update_rule_reg <= DEFAULT_RULE;
            ca_state_reg <= 32'b0;
        end else begin
            if (load_update_rule) update_rule_reg <= update_rule;
            if (ca_state_we) ca_state_reg <= ca_state_new;
        end
    end

    always @* begin : ca_state_update
        integer i;
        for (i = 0; i < 32; i = i + 1) begin
            case ({ca_state_reg[(i+31)%32], ca_state_reg[i], ca_state_reg[(i+1)%32]})
                0: tmp_ca_state_new[i] = update_rule_reg[0];
                1: tmp_ca_state_new[i] = update_rule_reg[1];
                2: tmp_ca_state_new[i] = update_rule_reg[2];
                3: tmp_ca_state_new[i] = update_rule_reg[3];
                4: tmp_ca_state_new[i] = update_rule_reg[4];
                5: tmp_ca_state_new[i] = update_rule_reg[5];
                6: tmp_ca_state_new[i] = update_rule_reg[6];
                7: tmp_ca_state_new[i] = update_rule_reg[7];
            endcase
        end
    end

    always @* begin
        ca_state_new = tmp_ca_state_new;
        ca_state_we = load_init_pattern ? 1'b0 : next_pattern;
        if (load_init_pattern) ca_state_new = init_pattern_data;
    end
endmodule