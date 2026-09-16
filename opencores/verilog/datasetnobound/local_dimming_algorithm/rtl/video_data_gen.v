`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/09 13:32:58
// Design Name: 
// Module Name: video_data_gen
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


(* keep_hierarchy = "yes" *) module video_data_gen
	(
	input 	wire		pix_clk,
	input 	wire		turn_mode,
	output	wire[7:0]	VGA_R,
	output	wire[7:0]	VGA_G,
	output	wire[7:0]	VGA_B,
	output	wire		VGA_HS,
	output	wire		VGA_VS,
	output	wire		VGA_DE
	);

//---------------------------------//
//--------------------------------//
parameter H_Total		=	2200;
parameter H_Sync		=	44;
parameter H_Back		=	148;
parameter H_Active	=	1920;
parameter H_Front		=	88;
parameter H_Start		=	192;
parameter H_End		=	2112;
//-------------------------------// 	
//-------------------------------//
parameter V_Total		=	2250;
parameter V_Sync		=	10;
parameter V_Back		=	72;
parameter V_Active	=	2160;
parameter V_Front		=	8;
parameter V_Start		=	82;
parameter V_End		=	2242;
reg[11:0]	x_cnt = 0;
always @(posedge pix_clk)	
begin
	if(x_cnt==H_Total)
	x_cnt	<=	1;
	else
	x_cnt	<=	x_cnt	+	1;
end

reg	hsync_r = 0;
reg	hs_de = 0;
always @(posedge pix_clk)
begin
	if(x_cnt==1)
	hsync_r	<=	1'b0;
	else if(x_cnt==H_Sync)
	hsync_r	<=	1'b1;
	
	if(x_cnt==H_Start)
	hs_de	<=	1'b1;
	else if(x_cnt==H_End)
	hs_de	<=	1'b0;
end

reg[11:0]	y_cnt = 0;
always @(posedge pix_clk)
begin
	if(y_cnt==V_Total)
	y_cnt	<=	1;
	else if(x_cnt==H_Total)
	y_cnt	<=	y_cnt	+	1;
end

reg	vsync_r = 0;
reg	vs_de = 0;
always @(posedge pix_clk)
begin
	if(y_cnt==1)
	vsync_r	<=	1'b0;
	else if(y_cnt==V_Sync)
	vsync_r	<=	1'b1;
	
	if(y_cnt==V_Start)
	vs_de	<=	1'b1;
	else if(y_cnt==V_End)
	vs_de	<=	1'b0;
end


reg[16:0] key_counter=0;
reg[3:0]	dis_mode= 0;
always @(posedge pix_clk)	
begin
	if(turn_mode==1'b0)
	key_counter	<=	14'b0;
	else if((turn_mode==1'b1)&(key_counter<=17'h11704))
	key_counter	<=	key_counter	+	1'b1;
	
	if(key_counter==17'h11704)
	begin
			dis_mode <= 'd7;
	end
end

reg[7:0]	VGA_R_reg;
reg[7:0]	VGA_G_reg;
reg[7:0]	VGA_B_reg;
always @(posedge pix_clk)
begin  
	if(1'b0) 
		begin 
		VGA_R_reg<=0; 
	   VGA_G_reg<=0;
	   VGA_B_reg<=0;		 
		end
   else
     case(dis_mode)
		   4'd7:begin 
				if(y_cnt<=45+82)
					if(x_cnt<=212)
						VGA_R_reg <= 0;
					else if(x_cnt >=213 && x_cnt <232)
						VGA_R_reg <= 1;
					else if(x_cnt >=233 && x_cnt <252)
						VGA_R_reg <= 2;
					else 
						VGA_R_reg <= 3;
				else VGA_R_reg <= 3;
                 VGA_G_reg<=x_cnt[7:0];
                 VGA_B_reg<=x_cnt[7:0];
			end
		   default:begin
			     VGA_R_reg<=8'b11111111;                
                 VGA_G_reg<=8'b11111111;
                 VGA_B_reg<=8'b11111111;
			end					  
         endcase
end

assign VGA_HS	=	hsync_r;
assign VGA_VS	=	vsync_r;
assign VGA_DE	=	hs_de	&	vs_de;
assign VGA_R	=	(hs_de & vs_de)?VGA_R_reg:8'h0;
assign VGA_G	=	(hs_de & vs_de)?VGA_G_reg:8'h0;
assign VGA_B	=	(hs_de & vs_de)?VGA_B_reg:8'h0;
endmodule
