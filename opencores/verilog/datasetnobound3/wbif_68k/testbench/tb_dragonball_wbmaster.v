`timescale 1ns / 1ps

module tb_dragonball_wbmaster;

    parameter adr_hi = 9;

    reg clk, reset_n;
    reg [adr_hi:1] a;
    reg cs_n; wire [15:0] d;
    reg lwe_n, uwe_n, oe_n;
    wire dtack_n, berr;
    wire clk_o, rst_o, cyc_o, stb_o;
    wire [adr_hi:1] adr_o; wire [1:0] sel_o; wire we_o;
    wire [15:0] dat_o; reg [15:0] wb_dat_i; reg ack_i, err_i;

    reg [15:0] d_drive; reg d_oe;
    assign d = d_oe ? d_drive : 16'bz;

    dragonball_wbmaster #(.adr_hi(adr_hi)) uut (
        .clk(clk),.reset_n(reset_n),.a(a),.cs_n(cs_n),.d(d),
        .lwe_n(lwe_n),.uwe_n(uwe_n),.oe_n(oe_n),.dtack_n(dtack_n),.berr(berr),
        .clk_o(clk_o),.rst_o(rst_o),.cyc_o(cyc_o),.stb_o(stb_o),
        .adr_o(adr_o),.sel_o(sel_o),.we_o(we_o),.dat_o(dat_o),
        .dat_i(wb_dat_i),.ack_i(ack_i),.err_i(err_i));

    initial clk=0; always #10 clk=~clk;

    always @(posedge clk or negedge reset_n)
        if(!reset_n) begin ack_i<=0;wb_dat_i<=0; end
        else begin if(cyc_o&&stb_o&&!ack_i) begin ack_i<=1; if(!we_o) wb_dat_i<=$random%65536; end else ack_i<=0; end
    initial err_i=0;

    task wr; input [adr_hi:1] ad; input [15:0] da; input uw,lw;
      begin @(posedge clk); a<=ad;cs_n<=0;oe_n<=1;lwe_n<=~lw;uwe_n<=~uw;d_oe<=1;d_drive<=da;
            @(negedge dtack_n);@(posedge clk); cs_n<=1;lwe_n<=1;uwe_n<=1;d_oe<=0;@(posedge clk); end endtask

    task rd; input [adr_hi:1] ad; output [15:0] da;
      begin @(posedge clk); a<=ad;cs_n<=0;oe_n<=0;lwe_n<=1;uwe_n<=1;d_oe<=0;
            @(negedge dtack_n); da=d;@(posedge clk); cs_n<=1;oe_n<=1;@(posedge clk); end endtask

    integer i; reg [15:0] rd_data, addr;

    initial begin
        $dumpfile("dragonball_wbmaster.vcd"); $dumpvars(0,tb_dragonball_wbmaster);
        clk=0; reset_n=0; cs_n=1;oe_n=1;lwe_n=1;uwe_n=1;d_oe=0;a=0;
        #100; reset_n=1; #100;

        // Variant: sequential address pattern writes
        for (i=0;i<100;i=i+1) begin
            addr = i[adr_hi:1];
            wr(addr, 16'ha5a5, 1'b1, 1'b1);
        end

        // Sequential reads
        for (i=0;i<100;i=i+1) begin
            addr = i[adr_hi:1];
            rd(addr, rd_data);
        end

        #1000;
        $display("Simulation finished at %0t",$time); $finish;
    end

endmodule