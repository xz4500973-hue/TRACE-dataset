`timescale 1ns/1ns

module traffic_light (
    input rst_n, clk, pass_request,
    output wire [7:0] clock,
    output reg red, yellow, green
);

    parameter IDLE=2'd0, RED_ST=2'd1, YELLOW_ST=2'd2, GREEN_ST=2'd3;
    reg [1:0] state;
    reg [7:0] cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE; cnt <= 8'd10;
            red <= 0; yellow <= 0; green <= 0;
        end else begin
            case (state)
                IDLE: begin
                    red <= 0; yellow <= 0; green <= 0;
                    state <= RED_ST;
                end
                RED_ST: begin
                    red <= 1; yellow <= 0; green <= 0;
                    if (cnt == 1) begin
                        cnt <= 8'd60;
                        state <= GREEN_ST;
                    end else cnt <= cnt - 1;
                end
                GREEN_ST: begin
                    red <= 0; yellow <= 0; green <= 1;
                    if (pass_request && cnt > 10) cnt <= 8'd10;
                    else if (cnt == 1) begin
                        cnt <= 8'd5;
                        state <= YELLOW_ST;
                    end else cnt <= cnt - 1;
                end
                YELLOW_ST: begin
                    red <= 0; yellow <= 1; green <= 0;
                    if (cnt == 1) begin
                        cnt <= 8'd10;
                        state <= RED_ST;
                    end else cnt <= cnt - 1;
                end
            endcase
        end
    end

    assign clock = cnt;

endmodule