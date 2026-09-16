`timescale 1ns / 1ps

module tb_wbfmtxhack;

    reg clk;
    reg         wb_cyc, wb_stb, wb_we, wb_addr;
    reg  [31:0] wb_data;
    wire        wb_ack, wb_stall;
    wire [31:0] wb_rdata;
    wire        o_int;
    wire        o_tx;

    wbfmtxhack dut (
        .i_clk(clk), .i_wb_cyc(wb_cyc), .i_wb_stb(wb_stb),
        .i_wb_we(wb_we), .i_wb_addr(wb_addr), .i_wb_data(wb_data),
        .o_wb_ack(wb_ack), .o_wb_stall(wb_stall), .o_wb_data(wb_rdata),
        .o_tx(o_tx), .o_int(o_int)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    task wb_write;
        input addr; input [31:0] data;
        begin
            @(posedge clk);
            wb_cyc<=1; wb_stb<=1; wb_we<=1; wb_addr<=addr; wb_data<=data;
            @(posedge clk); wb_cyc<=0; wb_stb<=0; wb_we<=0;
        end
    endtask

    task wb_read;
        input addr; output [31:0] data;
        begin
            @(posedge clk);
            wb_cyc<=1; wb_stb<=1; wb_we<=0; wb_addr<=addr;
            @(posedge clk); data=wb_rdata; wb_cyc<=0; wb_stb<=0;
        end
    endtask

    integer i; reg [31:0] rd;

    initial begin
        $dumpfile("wbfmtxhack.vcd");
        $dumpvars(0, tb_wbfmtxhack);
        wb_cyc=0; wb_stb=0; wb_we=0; wb_addr=0; wb_data=0;
        #100;

        // Init: sample rate + NCO
        wb_write(1'b0, {16'd1814, 16'h8000});
        wb_write(1'b1, 32'h18000000);  // different carrier

        #200000;

        // Write audio samples with varying patterns
        for (i=0;i<80;i=i+1) begin
            wb_write(1'b0, {16'd0, $random % 65536});
            #3000;
        end

        // Change carrier mid-stream
        wb_write(1'b1, 32'h30000000);
        #200000;

        for (i=0;i<80;i=i+1) begin
            wb_write(1'b0, {16'd0, 16'hc000 + (i%256)});
            #2000;
        end

        #50000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule