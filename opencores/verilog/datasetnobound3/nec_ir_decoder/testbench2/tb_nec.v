`timescale 1ns / 1ps

module tb_nec;

    reg clk; reg rst; reg ir;
    wire [7:0] led;
    nec u_dut (.clk(clk), .rst(rst), .ir(ir), .led(led));

    initial clk = 0;
    always #10 clk = ~clk;

    localparam LDR_L=450000, LDR_H=225000, BL=28125, BH0=28125, BH1=84375;

    task send_nec_frame;
        input [7:0] addr; input [7:0] cmd;
        integer i;
        begin
            ir=1'b0; repeat(LDR_L) @(posedge clk); ir=1'b1; repeat(LDR_H) @(posedge clk);
            for(i=0;i<8;i=i+1) begin ir=1'b0; repeat(BL) @(posedge clk); ir=1'b1;
                if(addr[i]) repeat(BH1) @(posedge clk); else repeat(BH0) @(posedge clk); end
            for(i=0;i<8;i=i+1) begin ir=1'b0; repeat(BL) @(posedge clk); ir=1'b1;
                if(~addr[i]) repeat(BH1) @(posedge clk); else repeat(BH0) @(posedge clk); end
            for(i=0;i<8;i=i+1) begin ir=1'b0; repeat(BL) @(posedge clk); ir=1'b1;
                if(cmd[i]) repeat(BH1) @(posedge clk); else repeat(BH0) @(posedge clk); end
            for(i=0;i<8;i=i+1) begin ir=1'b0; repeat(BL) @(posedge clk); ir=1'b1;
                if(~cmd[i]) repeat(BH1) @(posedge clk); else repeat(BH0) @(posedge clk); end
            ir=1'b0; repeat(BL) @(posedge clk); ir=1'b1; repeat(10000) @(posedge clk);
        end
    endtask

    integer i;
    initial begin
        $dumpfile("nec_random.vcd");
        $dumpvars(0, tb_nec);
        rst = 1'b0; ir = 1'b1;
        #100;
        rst = 1'b1;
        repeat(1000) @(posedge clk);
        // 发送 100 个随机帧，间隔很短
        for (i = 0; i < 100; i = i + 1) begin
            send_nec_frame({$random} % 256, {$random} % 256);
            repeat(5000) @(posedge clk);   // 非常短的间隔
        end
        #100000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule