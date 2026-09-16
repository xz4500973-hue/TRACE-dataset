`timescale 1ns / 1ps

module tb_user_logic;

    reg clk; reg rst;
    wire DQ_out, DQ_oe;
    reg  DQ_in;
    wire DQ_bidir = DQ_oe ? 1'bz : DQ_out;
    wire [0:31] Bus2IP_Data;
    wire [0:3]  Bus2IP_BE;
    wire [0:3]  Bus2IP_RdCE;
    wire [0:3]  Bus2IP_WrCE;
    wire [0:31] IP2Bus_Data;
    wire IP2Bus_Ack, IP2Bus_Retry, IP2Bus_Error, IP2Bus_ToutSup;
    reg  [0:31] tb_wr_data;
    reg  [0:3]  tb_wr_ce, tb_rd_ce, tb_be;
    assign Bus2IP_Data = tb_wr_data;
    assign Bus2IP_BE   = tb_be;
    assign Bus2IP_RdCE = tb_rd_ce;
    assign Bus2IP_WrCE = tb_wr_ce;

    user_logic u_dut (
        .DQ_Wire_I(DQ_in), .DQ_Wire_O(DQ_out), .DQ_Wire_T(DQ_oe),
        .main_fifty_clock(clk), .Bus2IP_Clk(clk), .Bus2IP_Reset(rst),
        .Bus2IP_Data(Bus2IP_Data), .Bus2IP_BE(Bus2IP_BE),
        .Bus2IP_RdCE(Bus2IP_RdCE), .Bus2IP_WrCE(Bus2IP_WrCE),
        .IP2Bus_Data(IP2Bus_Data), .IP2Bus_Ack(IP2Bus_Ack),
        .IP2Bus_Retry(IP2Bus_Retry), .IP2Bus_Error(IP2Bus_Error),
        .IP2Bus_ToutSup(IP2Bus_ToutSup)
    );

    // 25MHz clock
    initial clk = 0;
    always #10 clk = ~clk;

    // Slave model
    reg [2:0] sl_state;
    reg [15:0] sl_timer;
    reg [7:0] sl_byte;
    reg [3:0] sl_bcnt;
    always @(posedge clk) begin
        if(rst) begin
            DQ_in<=1'b1; sl_state<=0; sl_timer<=0; sl_byte<=8'h55; sl_bcnt<=0;
        end else begin
            case(sl_state)
                0: if(!DQ_out && !DQ_oe) begin sl_state<=1; sl_timer<=0; end
                1: if(DQ_oe) begin
                    if(sl_timer<15) begin sl_timer<=sl_timer+1; DQ_in<=1'b1; end
                    else begin sl_state<=2; sl_timer<=0; DQ_in<=1'b0; end
                end
                2: begin
                    if(sl_timer<60) begin sl_timer<=sl_timer+1; DQ_in<=1'b0; end
                    else begin DQ_in<=1'b1; sl_state<=0; end
                end
            endcase
            if(sl_state==0 && !DQ_out && !DQ_oe) begin
                if(sl_bcnt<8) begin
                    if(DQ_oe) begin DQ_in<=sl_byte[0]; sl_byte<={1'b0,sl_byte[7:1]}; sl_bcnt<=sl_bcnt+1; end
                end
            end
        end
    end

    task bus_write;
        input [1:0] reg_addr; input [31:0] data;
        begin
            @(posedge clk); tb_wr_data<=data; tb_be<=4'b1111;
            case(reg_addr)
                2'd0: tb_wr_ce<=4'b1000; 2'd1: tb_wr_ce<=4'b0100;
                2'd2: tb_wr_ce<=4'b0010; 2'd3: tb_wr_ce<=4'b0001;
            endcase
            tb_rd_ce<=4'b0000; @(posedge clk); tb_wr_ce<=4'b0000; tb_wr_data<=0;
        end
    endtask

    task start_operation;
        input [2:0] opcode; input [7:0] wr_byte;
        begin
            bus_write(2'd1, {8'd0, wr_byte});
            bus_write(2'd2, {8'd0, opcode});
            bus_write(2'd3, 32'h80000000);
            repeat(200) @(posedge clk);
        end
    endtask

    initial begin
        $dumpfile("opb_onewire.vcd"); $dumpvars(0, tb_user_logic);
        rst=1; tb_wr_data=0; tb_wr_ce=0; tb_rd_ce=0; tb_be=0;
        #100; rst=0; #100;
        $display("Bus reset"); start_operation(3'd3, 8'd0);
        $display("Write 0xAA"); start_operation(3'd1, 8'h23);
        $display("Read"); start_operation(3'd2, 8'd0);
        repeat(1300) @(posedge clk);
        $display("Simulation finished at %0t", $time); $finish;
    end
endmodule