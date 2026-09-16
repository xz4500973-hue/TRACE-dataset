`timescale 1ns/1ns

module traffic_light #(
    parameter RED_TIME=10, GREEN_TIME=60, YELLOW_TIME=5
)(
    input rst_n, clk, pass_request,
    output wire [7:0] clock,
    output reg red, yellow, green
);

    reg [7:0] cnt;
    reg [1:0] st; // 0=red, 1=green, 2=yellow

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            cnt<=RED_TIME;st<=0;
            red<=0;yellow<=0;green<=0;
        end else begin
            if(cnt==1)begin
                if(st==0)begin cnt<=GREEN_TIME;st<=1;end
                else if(st==1)begin cnt<=YELLOW_TIME;st<=2;end
                else begin cnt<=RED_TIME;st<=0;end
            end else begin
                cnt<=cnt-1;
                if(st==1&&pass_request&&cnt>10)cnt<=10;
            end
            red<=(st==0);green<=(st==1);yellow<=(st==2);
        end
    end

    assign clock=cnt;

endmodule