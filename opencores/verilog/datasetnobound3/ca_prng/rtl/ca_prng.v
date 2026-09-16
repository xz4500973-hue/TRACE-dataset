//========================================================================
// ca_prng.v - VARIANT: generate for-loop + merged single always
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
    reg [7:0] update_rule_reg;

    assign prng_data = ca_state_reg;

    always @(posedge clk) begin : single_always
        integer i;
        reg [31:0] ca_state_new;
        if (!reset_n) begin
            update_rule_reg <= DEFAULT_RULE;
            ca_state_reg <= 32'b0;
        end else begin
            if (load_update_rule) update_rule_reg <= update_rule;
            if (load_init_pattern) begin
                ca_state_reg <= init_pattern_data;
            end else if (next_pattern) begin
                for (i = 0; i < 32; i = i + 1) begin
                    case ({ca_state_reg[(i+31)%32], ca_state_reg[i], ca_state_reg[(i+1)%32]})
                        0: ca_state_new[i] = update_rule_reg[0];
                        1: ca_state_new[i] = update_rule_reg[1];
                        2: ca_state_new[i] = update_rule_reg[2];
                        3: ca_state_new[i] = update_rule_reg[3];
                        4: ca_state_new[i] = update_rule_reg[4];
                        5: ca_state_new[i] = update_rule_reg[5];
                        6: ca_state_new[i] = update_rule_reg[6];
                        7: ca_state_new[i] = update_rule_reg[7];
                    endcase
                end
                ca_state_reg <= ca_state_new;
            end
        end
    end
endmodule