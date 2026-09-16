`timescale 1ns/1ps

module calendar(CLK, RST, Hours, Mins, Secs);
    input  CLK, RST;
    output [5:0] Hours, Mins, Secs;
    reg [5:0] Hours, Mins, Secs;

    // Counter-based with combined comparison
    wire sec_roll = (Secs == 59);
    wire min_roll = (Mins == 59) && sec_roll;
    wire hr_roll  = (Hours == 23) && min_roll;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Secs  <= 0;
            Mins  <= 0;
            Hours <= 0;
        end else begin
            Secs  <= sec_roll ? 0 : Secs + 1;
            Mins  <= min_roll ? 0 : (sec_roll ? Mins + 1 : Mins);
            Hours <= hr_roll  ? 0 : (min_roll ? Hours + 1 : Hours);
        end
    end
endmodule