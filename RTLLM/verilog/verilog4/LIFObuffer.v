`timescale 1ns/1ps

module LIFObuffer (
    input [3:0] dataIn,
    input RW, EN, Rst, Clk,
    output reg EMPTY, FULL,
    output reg [3:0] dataOut
);

    reg [3:0] mem [0:3];
    reg [2:0] cnt;  // item count: 0=empty, 4=full

    always @(posedge Clk) begin
        if (Rst) begin
            cnt <= 3'd0;
            EMPTY <= 1'b1;
            FULL  <= 1'b0;
            dataOut <= 4'h0;
            mem[0] <= 4'h0; mem[1] <= 4'h0;
            mem[2] <= 4'h0; mem[3] <= 4'h0;
        end else if (EN) begin
            if (!RW && cnt < 3'd4) begin  // PUSH
                mem[cnt] <= dataIn;
                cnt <= cnt + 1'b1;
            end else if (RW && cnt > 3'd0) begin  // POP
                dataOut <= mem[cnt-1];
                cnt <= cnt - 1'b1;
            end
            EMPTY <= (cnt == 3'd0 || (cnt == 3'd1 && RW));
            FULL  <= (cnt == 3'd4 || (cnt == 3'd3 && !RW));
        end
    end

endmodule