`timescale 1ns/1ps

module calendar(CLK, RST, Hours, Mins, Secs);
    input  CLK, RST;
    output [5:0] Hours, Mins, Secs;
    reg [5:0] Hours, Mins, Secs;
    reg [16:0] total_secs;

    // Total seconds counter + decode to HMS
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            total_secs <= 0;
        end else begin
            if (total_secs == 17'd86399) // 23:59:59 = 86400-1
                total_secs <= 0;
            else
                total_secs <= total_secs + 1;
        end
    end

    wire [16:0] t = total_secs;
    wire [5:0] h = t / 3600;
    wire [5:0] m = (t % 3600) / 60;
    wire [5:0] s = t % 60;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Hours <= 0; Mins <= 0; Secs <= 0;
        end else begin
            Hours <= h;
            Mins  <= m;
            Secs  <= s;
        end
    end
endmodule