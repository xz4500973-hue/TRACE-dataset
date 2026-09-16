`timescale 1ns/1ps

module adder_16bit_tb;

    reg         clk;
    reg [15:0]  a;
    reg [15:0]  b;
    reg         Cin;
    wire [15:0] y;
    wire        Co;

    adder_16bit dut (
        .a(a), .b(b), .Cin(Cin), .y(y), .Co(Co)
    );

    always #5 clk = ~clk;

    integer j;

    initial begin
        $dumpfile("adder_16bit_tb.vcd");
        $dumpvars(0, adder_16bit_tb);

        clk = 1'b0;
        a = 16'd0; b = 16'd0; Cin = 1'b0;
        #8;

        // Full carry propagation: a=0xFFFF, b 0→31, Cin=1
        a   = 16'hFFFF;
        Cin = 1'b1;
        for (j = 0; j < 32; j = j + 1) begin
            @(posedge clk);
            b = j[4:0];
        end

        // a=0, b=0xFFFF, Cin=0
        a = 16'h0000; b = 16'hFFFF; Cin = 1'b0;
        @(posedge clk);
        Cin = 1'b1;
        @(posedge clk);

        // a=0x8000, b=0x8000
        a = 16'h8000; b = 16'h8000; Cin = 1'b0;
        @(posedge clk);
        Cin = 1'b1;
        @(posedge clk);

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule