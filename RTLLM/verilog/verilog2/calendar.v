`timescale 1ns/1ps

module calendar(CLK, RST, Hours, Mins, Secs);
    input  CLK, RST;
    output [5:0] Hours, Mins, Secs;
    reg [5:0] Hours, Mins, Secs;

    // Single always block, cascaded rollover
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Secs  <= 0;
            Mins  <= 0;
            Hours <= 0;
        end else begin
            if (Secs == 59) begin
                Secs <= 0;
                if (Mins == 59) begin
                    Mins <= 0;
                    if (Hours == 23)
                        Hours <= 0;
                    else
                        Hours <= Hours + 1;
                end else
                    Mins <= Mins + 1;
            end else
                Secs <= Secs + 1;
        end
    end
endmodule