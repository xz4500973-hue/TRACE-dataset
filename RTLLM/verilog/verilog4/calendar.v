`timescale 1ns/1ps

module calendar(CLK, RST, Hours, Mins, Secs);
    input  CLK, RST;
    output [5:0] Hours, Mins, Secs;
    reg [5:0] Hours, Mins, Secs;

    // FSM-style: one state variable tracking rollover
    reg [1:0] roll; // 0=none, 1=sec, 2=min, 3=hr

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Secs <= 0; Mins <= 0; Hours <= 0; roll <= 0;
        end else begin
            roll <= 0;
            if (Secs == 59) begin
                Secs <= 0;
                roll <= 1;
            end else begin
                Secs <= Secs + 1;
            end

            if (roll == 1) begin
                if (Mins == 59) begin
                    Mins <= 0;
                    roll <= 2;
                end else begin
                    Mins <= Mins + 1;
                end
            end

            if (roll == 2) begin
                if (Hours == 23) begin
                    Hours <= 0;
                end else begin
                    Hours <= Hours + 1;
                end
            end
        end
    end
endmodule