`timescale 1ns / 1ps

module tb_wbfmtxhack;

    reg clk;
    reg wb_cyc,wb_stb,wb_we,wb_addr;
    reg [31:0] wb_data;
    wire wb_ack,wb_stall;
    wire [31:0] wb_rdata;
    wire o_int,o_tx;

    wbfmtxhack dut(.i_clk(clk),.i_wb_cyc(wb_cyc),.i_wb_stb(wb_stb),.i_wb_we(wb_we),
        .i_wb_addr(wb_addr),.i_wb_data(wb_data),.o_wb_ack(wb_ack),.o_wb_stall(wb_stall),
        .o_wb_data(wb_rdata),.o_tx(o_tx),.o_int(o_int));

    initial clk=0; always #5 clk=~clk;

    task wr; input a; input [31:0] d;
      begin @(posedge clk); wb_cyc<=1;wb_stb<=1;wb_we<=1;wb_addr<=a;wb_data<=d;@(posedge clk);wb_cyc<=0;wb_stb<=0;wb_we<=0; end endtask

    integer i;

    initial begin
        $dumpfile("wbfmtxhack.vcd"); $dumpvars(0,tb_wbfmtxhack);
        wb_cyc=0;wb_stb=0;wb_we=0;wb_addr=0;wb_data=0;
        #100;

        wr(1'b0,{16'd1000,16'h8000});
        wr(1'b1,32'h0c000000);

        #300000;

        // Sweeping frequency changes
        for(i=0;i<5;i=i+1) begin
            wr(1'b1,32'h10000000 + i*32'h04000000);
            #100000;
        end

        // Write burst samples
        for(i=0;i<120;i=i+1) begin
            wr(1'b0,{16'd0,16'haaaa});
            #1000;
        end

        #100000; $display("Done at %0t",$time); $finish;
    end

endmodule