`timescale 1ns/1ns

module traffic_light (
    input rst_n, clk, pass_request,
    output reg [7:0] clock,
    output reg red, yellow, green
);

    // Countdown timer: 60→10→5→60 cycle
    reg [7:0] timer;
    reg [1:0] phase; // 0=red, 1=green, 2=yellow

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer<=10; phase<=0;
            red<=0;green<=0;yellow<=0;clock<=10;
        end else begin
            if(timer==1)begin
                case(phase)
                    0:begin timer<=60;phase<=1;end
                    1:begin timer<=5; phase<=2;end
                    2:begin timer<=10;phase<=0;end
                endcase
            end else begin
                timer<=timer-1;
                if(phase==1&&pass_request&&timer>10)timer<=10;
            end
            {red,green,yellow}<= (phase==0)?3'b100:
                                (phase==1)?3'b010:3'b001;
            clock<=timer;
        end
    end

endmodule