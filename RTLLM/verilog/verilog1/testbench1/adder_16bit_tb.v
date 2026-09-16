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

    integer i;

    initial begin
        $dumpfile("adder_16bit_tb.vcd");
        $dumpvars(0, adder_16bit_tb);

        clk = 1'b0;
        a = 16'd0; b = 16'd0; Cin = 1'b0;
        #10;

        // Boundary walk: a 0→255, b=~a, Cin=a[0]
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            a   = i;
            b   = ~i;
            Cin = i[0];
        end

        // a=0xFFFF, b=0xFFFF, Cin=1
        @(posedge clk);
        a = 16'hFFFF; b = 16'hFFFF; Cin = 1'b1;

        // a=0x5555, b=0xAAAA
        @(posedge clk);
        a = 16'h5555; b = 16'hAAAA; Cin = 1'b0;
        @(posedge clk);
        Cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule