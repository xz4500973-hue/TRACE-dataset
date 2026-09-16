`timescale 1ns/1ns

module traffic_light (
    input rst_n, clk, pass_request,
    output [7:0] clock,
    output red, yellow, green
);

    reg [2:0] state; // one-hot: 001=red, 010=green, 100=yellow
    reg [7:0] cnt;
    reg r,g,y;

    localparam RED=3'b001, GREEN=3'b010, YELLOW=3'b100;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state<=RED; cnt<=10; r<=0;g<=0;y<=0;
        end else begin
            cnt<=cnt-1;
            case(state)
                RED: begin
                    r<=1;g<=0;y<=0;
                    if(cnt==1)begin cnt<=60;state<=GREEN;end
                end
                GREEN: begin
                    r<=0;g<=1;y<=0;
                    if(pass_request&&cnt>10)cnt<=10;
                    if(cnt==1)begin cnt<=5;state<=YELLOW;end
                end
                YELLOW: begin
                    r<=0;g<=0;y<=1;
                    if(cnt==1)begin cnt<=10;state<=RED;end
                end
                default:begin cnt<=10;state<=RED;end
            endcase
        end
    end

    assign clock=cnt;
    assign red=r;assign green=g;assign yellow=y;

endmodule