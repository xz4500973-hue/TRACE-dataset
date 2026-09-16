`timescale 1ns / 1ps
module tb_rtfSimpleUart;
    reg rst, clk; reg cyc, stb, we; reg [31:0] adr; reg [7:0] dat_i;
    wire [7:0] dat_o; wire ack; reg cts_ni, dsr_ni, dcd_ni; reg rxd;
    wire txd, rts_no, dtr_no, irq, data_present, baud16_clk;
    rtfSimpleUart uut (.rst_i(rst),.clk_i(clk),.cyc_i(cyc),.stb_i(stb),.we_i(we),.adr_i(adr),.dat_i(dat_i),.dat_o(dat_o),.ack_o(ack),.irq_o(irq),.cts_ni(cts_ni),.rts_no(rts_no),.dsr_ni(dsr_ni),.dcd_ni(dcd_ni),.dtr_no(dtr_no),.rxd_i(rxd),.txd_o(txd),.data_present_o(data_present));

    initial clk=0; always #20 clk=~clk;  // 25MHz

    task wb_write; input [31:0] addr; input [7:0] data;
        begin @(posedge clk); cyc<=1; stb<=1; we<=1; adr<=addr; dat_i<=data;
        @(posedge clk); cyc<=0; stb<=0; we<=0; end
    endtask
    task wb_read; input [31:0] addr; output [7:0] data;
        begin @(posedge clk); cyc<=1; stb<=1; we<=0; adr<=addr;
        @(posedge clk); data=dat_o; cyc<=0; stb<=0; end
    endtask

    localparam BIT_CLKS=65;
    task uart_send_byte; input [7:0] bytee; integer i;
        begin rxd=1'b0; repeat(BIT_CLKS) @(posedge clk);
        for(i=0;i<8;i=i+1) begin rxd=bytee[i]; repeat(BIT_CLKS) @(posedge clk); end
        rxd=1'b1; repeat(BIT_CLKS) @(posedge clk); end
    endtask

    reg [7:0] read_val;
    initial begin
        $dumpfile("rtfSimpleUart.vcd"); $dumpvars(0,tb_rtfSimpleUart);
        rst=1; cyc=0; stb=0; we=0; adr=0; dat_i=0; cts_ni=1; dsr_ni=1; dcd_ni=1; rxd=1;
        #100; rst=0; #100;
        wb_write(32'hFFDC_0A04, 8'h01);
        wb_write(32'hFFDC_0A07, 8'h00);
        wb_write(32'hFFDC_0A06, 8'h03);
        uart_send_byte(8'hA5); while(!data_present) @(posedge clk);
        wb_read(32'hFFDC_0A00, read_val);
        uart_send_byte(8'h5A); while(!data_present) @(posedge clk);
        uart_send_byte(8'h33); while(!data_present) @(posedge clk);
        #20000;
        $display("Done at %0t", $time); $finish;
    end
endmodule