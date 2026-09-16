`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/25 16:04:27
// Design Name: 
// Module Name: video_data_trans
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


(* keep_hierarchy = "yes" *) module video_data_trans(
	input					i_clk,
	input					i_reset_n,
	input		[11:0]		i_ave_data,
	input					i_ave_en,
	input					i_vsync,
	input					i_vde,

	output					o_vsync,
	output					o_spi_cs,
	output					o_spi_clk,
	output					o_spi_sdo
    );
	parameter 				classifier = 16'b1010_1010_0101_0101; // 0xAA55
    parameter 				command = 16'b0000_0000_000_00_0_0_0; 
    parameter 				AOD = 16'b1000_0100_0010_0001;
	assign					o_vsync = i_vsync;
	
	reg			[1:0]		clk_div4;
	reg			[1:0]		clk_div16;	
	reg			[3:0]		spi_clk_cnt;
	reg			[11:0]		RAM		[4607:0];
	wire					gen_clk;
	wire					spi_clk;
	reg			[12:0]		r_ram_addr_cnt;
	reg			[15:0]		spi_data;
	wire					spi_clk_16;
	reg			[14:0]		spi_data_cnt,spi_data_cnt_r;
	reg						spi_sdo;
	reg						spi_cs;
	reg						vsync_r;
	reg						vsync_rr;
	wire					vsync_trig;
	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				clk_div4 <= 0;
			else
				clk_div4 <= clk_div4 + 1'b1;
		end
	assign		gen_clk = clk_div4[1];
	always@(posedge gen_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				clk_div16 <= 0;
			else
				clk_div16 <= clk_div16 + 1'b1;
		end
	assign		spi_clk = clk_div16[1];
	always@(posedge gen_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				r_ram_addr_cnt <= 0;
			else	if(i_vsync)
				r_ram_addr_cnt <= 0;
			else	if(r_ram_addr_cnt == 4607 && i_ave_en)
				r_ram_addr_cnt <= 0;
			else	if(i_ave_en)
				r_ram_addr_cnt <= r_ram_addr_cnt + 1;
		end
	// 定义初始化计数器
	reg [12:0] init_cnt;   // 0 ~ 4607
	reg init_done;

	always @(posedge gen_clk or negedge i_reset_n) begin
		if (!i_reset_n) begin
			init_cnt   <= 13'd0;
			init_done  <= 1'b0;
		end else if (!init_done) begin
			RAM[init_cnt][11:0] <= 12'hFFF;   // 初始化当前地址
			if (init_cnt == 13'd4607)
				init_done <= 1'b1;            // 初始化完成
			else
				init_cnt <= init_cnt + 13'd1;
		end else if (i_ave_en) begin
			RAM[r_ram_addr_cnt] <= i_ave_data;
		end
	end
	always@(posedge spi_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				spi_clk_cnt <= 0;
			else	if(i_vsync)
				spi_clk_cnt <= 0;
			else	if(spi_clk_cnt == 'd15)
				spi_clk_cnt <= 0;
			else
				spi_clk_cnt <= spi_clk_cnt + 1'b1;
		end
	assign spi_clk_16 = !spi_clk_cnt[3];
	always@(posedge spi_clk)
		begin
			vsync_r <= i_vsync;
			vsync_rr <= vsync_r;
		end
	assign vsync_trig = !vsync_r &&  vsync_rr;
	always@(posedge spi_clk)	spi_data_cnt_r <= spi_data_cnt;
	always@(posedge spi_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				spi_data_cnt <= 0;
			else	if(vsync_trig)
				spi_data_cnt <= 0;
			else	if(spi_clk_cnt == 'd15)
				spi_data_cnt <= spi_data_cnt + 1;
		end
	always@(posedge spi_clk_16 or negedge i_reset_n)
		begin
			if(!i_reset_n)
				spi_data <= 0;
			else
				case(spi_data_cnt)
					0:	spi_data <= 'hzzzz;
					1:	spi_data <= classifier;
					2:	spi_data <= command;
					3:	spi_data <= AOD;
				default:
						spi_data <= (spi_data_cnt >= 4612)? 0 :{RAM[spi_data_cnt-4][11:4],8'h00};
				endcase
		end
	
	always@(posedge spi_clk	or negedge i_reset_n)
		begin
			if(!i_reset_n)
				spi_sdo <= 0;
			else
				spi_sdo <= spi_cs ? 0 : spi_data[15-spi_clk_cnt];
		end
	always@(posedge spi_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				spi_cs <= 0;
			else
				spi_cs <= (spi_data_cnt >= 0 && spi_data_cnt <= 4608+4) ?  0 : 1;
		end
	assign o_spi_clk = (spi_data_cnt_r > 0 && spi_data_cnt_r <= 4608+3) ? !spi_clk : 0;
 	assign o_spi_sdo = spi_sdo;
	assign o_spi_cs = spi_cs;
				
	
	
endmodule
