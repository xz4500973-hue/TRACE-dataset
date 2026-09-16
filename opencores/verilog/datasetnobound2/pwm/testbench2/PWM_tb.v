`timescale 1ns / 1ps
module PWM_tb;
    reg wb_clk=0; reg extclk=0; reg rst=1;
    reg [15:0] wb_data=0, wb_adr=0;
    reg wb_cyc=0, wb_stb=0, wb_we=0;
    wire wb_ack; wire [15:0] wb_o_data;
    wire [15:0] extDC; assign extDC=60;
    wire pwm;
    PWM PWM_0 (wb_clk, rst, wb_cyc, wb_stb, wb_we, wb_adr, wb_data, wb_o_data, wb_ack, extclk, extDC, 1'b1, pwm);

    always #20 wb_clk=~wb_clk;  // 25MHz
    always #50 extclk=~extclk;  // 10MHz
    initial #20 rst=0;

    reg [31:0] configdata [0:10];
    initial begin
        // Different config: timer mode, higher period, different divisor
        configdata[0]=32'h40303; configdata[1]=32'h400a0; configdata[2]=31'h17;
        configdata[3]=32'h80; configdata[4]=32'h00005; configdata[5]=32'h401a1;
        configdata[6]=32'h1c; configdata[7]=32'h80; configdata[8]=32'h20010;
        configdata[9]=32'h600aa; configdata[10]=32'h56;
    end

    task wb_write; input [15:0] a,d;
        begin @(posedge wb_clk); wb_cyc<=1; wb_stb<=1; wb_we<=1; wb_adr<=a; wb_data<=d;
        @(posedge wb_clk); wb_cyc<=0; wb_stb<=0; wb_we<=0; end
    endtask

    integer i;
    initial begin
        $dumpfile("PWM_tb.vcd");
	    $dumpvars(0, PWM_tb);
        #100;
        for(i=0; i<11; i=i+1) begin
            wb_write(configdata[i][31:16], configdata[i][15:0]);
            repeat(5) @(posedge wb_clk);
        end
        repeat(500) @(posedge wb_clk);
        $display("Done at %0t", $time); $finish;
    end
endmodule