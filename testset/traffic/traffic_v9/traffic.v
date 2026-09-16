`timescale 1ns/1ps
// traffic light, variant 9: 3-state FSM + cycle counter
module traffic (
    input  wire clk,
    input  wire rst_n,
    output wire [2:0] lights
);
    reg [1:0] state;
    reg [2:0] tcnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 2'd0;
            tcnt  <= 3'd0;
        end else begin
            case (state)
                2'd0: if (tcnt == 3'd3) begin state <= 2'd1; tcnt <= 3'd0; end
                      else tcnt <= tcnt + 3'd1;
                2'd1: begin state <= 2'd2; tcnt <= 3'd0; end
                2'd2: if (tcnt == 3'd3) begin state <= 2'd0; tcnt <= 3'd0; end
                      else tcnt <= tcnt + 3'd1;
            endcase
        end
    end
    assign lights = (state == 2'd0) ? 3'b001 :
                    (state == 2'd1) ? 3'b010 : 3'b100;
endmodule
