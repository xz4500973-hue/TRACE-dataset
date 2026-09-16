//2022.01.06 First_Version
//Author:Aaron_Liu
//This design is about local dimming arithmetic.

`define		X_display	'd1920			// 4K_3840_pixel and two_pixel per clock
`define		Y_display	'd2160			// 4k_2160_line
`define		X_base		'd96			
`define		Y_base		'd48
`define		X_scaling	'd20			// X_display/X_base
`define		Y_scaling	'd45			// Y_display/Y_base

(* keep_hierarchy = "yes" *) module	video_data_extract#(
	parameter			BUFFER_SIZE = 9,
	parameter			BUFFER_DATA_WIDTH = 16,
	parameter			BUFFER_ADDR_WIDTH = 9	//(X_scaling/4)*96=480 < 2^9=512
	)
	(
	input				i_clk,
	input				i_reset_n,
	
	//video_interface
	input	[47:0]		i_video_data,
	input				i_video_de,
	input				i_video_hs,
	input				i_video_vs,
	
	//rdRAM_interface
	input	[BUFFER_ADDR_WIDTH*BUFFER_SIZE-1:0]
						i_ram_rd_addr,
	output	[BUFFER_DATA_WIDTH*BUFFER_SIZE-1:0]
						o_ram_rd_data,
	input	[BUFFER_SIZE-1:0]
						i_ram_rd_en,
	output	[11:0]		o_X_cnt,
	output	[11:0]		o_Y_cnt
	);
					
	reg		[11:0]		r_X_cnt;
	reg		[11:0]		r_Y_cnt;
	reg		[BUFFER_SIZE-1:0]
						r_wr_enable;
	reg		[BUFFER_ADDR_WIDTH-1:0]
						r_wr_address;
	reg					r_video_de_r1;
	reg					r_video_de_r2;
	wire				w_video_de_trigger;
	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				begin
					r_video_de_r1 <= 0;
					r_video_de_r2 <= 0;
				end
			else
				begin
					r_video_de_r1 <= i_video_de;
					r_video_de_r2 <= r_video_de_r1;
				end
		end
	assign	w_video_de_trigger = r_video_de_r1 && !r_video_de_r2;
	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				r_X_cnt <= 0;
			else if(r_X_cnt == `X_display-1)
				r_X_cnt <= 0;
			else if(i_video_hs)
				r_X_cnt <= 0;
			else if(i_video_de)
				r_X_cnt <= r_X_cnt + 1;
			else 
				r_X_cnt <= r_X_cnt;
		end
	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				r_Y_cnt <= 0;
			else if(r_Y_cnt == `Y_display-1 && w_video_de_trigger)
				r_Y_cnt <= 0;
			else if(i_video_vs)
				r_Y_cnt <= 0;
			else if(w_video_de_trigger)
				r_Y_cnt <= r_Y_cnt + 1;
			else
				r_Y_cnt <= r_Y_cnt;
		end
	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				r_wr_enable <= 'd0;
			else
				r_wr_enable <= wr_enable(
											r_X_cnt,
											r_Y_cnt,
											i_video_de
										);
		end
	function	[BUFFER_SIZE-1:0] wr_enable(
											input	[11:0]	r_X_cnt,
											input	[11:0]	r_Y_cnt,
											input			i_video_de
											);
	begin
		if(!i_video_de)
			wr_enable = {9{1'd0}};
		else
			begin:blk1
				integer			i;
				reg		[11:0]	r_X_cnt_temp;
				reg		[11:0]	r_Y_cnt_temp;
				reg		[3:0]	r_Y_cnt_scaling;
					r_X_cnt_temp = r_X_cnt%(`X_scaling/5);	//1920/(X_scaling/5)=480 point,every point extract by 0,1,2,3
					r_Y_cnt_temp = r_Y_cnt%`Y_scaling;		//(Y_scaling)*48=2160 line,repeat line is 0,1,2...43,44
					if(r_Y_cnt_temp == 'd0)
							r_Y_cnt_scaling = 4'b0000;
					else
						begin
							if(r_Y_cnt_temp%5 == 2 && r_X_cnt ==  'd1919)
								r_Y_cnt_scaling = r_Y_cnt_scaling + 1;
							else
								r_Y_cnt_scaling = r_Y_cnt_scaling;
						end
					for(i=0 ; i<BUFFER_SIZE ; i=i+1)
						wr_enable[i] = ((r_X_cnt_temp == 2) && (r_Y_cnt_temp%5 == 2) && (r_Y_cnt_scaling == i))
										? 1 : 0;
			end
	end
	endfunction

	always@(posedge i_clk or negedge i_reset_n)
		begin
			if(!i_reset_n)
				r_wr_address <= 0;
			else 
				begin
					if(i_video_hs || i_video_vs)
						r_wr_address <= 0;
					else
						if(i_video_de && r_wr_enable != 0)
							r_wr_address <= r_wr_address + 1;
						else
							r_wr_address <= r_wr_address;
				end
		end
	assign o_X_cnt = r_X_cnt;
	assign o_Y_cnt = r_Y_cnt;
//Generate to instantiate the RAMs


generate
genvar i;
    // 先为每个 RAM 生成 addrB 选择信号
    wire [BUFFER_ADDR_WIDTH-1:0] addrB_sel [0:BUFFER_SIZE-1];
    for (i = 0; i < BUFFER_SIZE; i = i + 1) begin : addr_gen
        assign addrB_sel[i] = i_ram_rd_en[i] 
                            ? i_ram_rd_addr[BUFFER_ADDR_WIDTH*(i+1)-1 : BUFFER_ADDR_WIDTH*i]
                            : {BUFFER_ADDR_WIDTH{1'b0}};
    end

    for (i = 0; i < BUFFER_SIZE; i = i + 1) begin : ram_generate
        ramDualPort #(
            .DATA_WIDTH( BUFFER_DATA_WIDTH ),
            .ADDRESS_WIDTH( BUFFER_ADDR_WIDTH )
        ) ram_inst_i(
            .clk( i_clk ),
            .addrA( r_wr_address ),
            .dataA( {i_video_data[47:40], i_video_data[23:16]} ),
            .weA( r_wr_enable[i] ),
            .qA( ),
            .addrB( addrB_sel[i] ),
            .dataB( 0 ),
            .weB( 1'b0 ),
            .qB( o_ram_rd_data[BUFFER_DATA_WIDTH*(i+1)-1 : BUFFER_DATA_WIDTH*i] )
        );
    end
endgenerate
endmodule

//Dual port RAM
(* keep_hierarchy = "yes" *) module ramDualPort #(
    parameter DATA_WIDTH = 8,
    parameter ADDRESS_WIDTH = 8
)(
    input wire [(DATA_WIDTH-1):0] dataA, dataB,
    input wire [(ADDRESS_WIDTH-1):0] addrA, addrB,
    input wire weA, weB, clk,
    output reg [(DATA_WIDTH-1):0] qA, qB
);
    reg [DATA_WIDTH-1:0] ram[2**ADDRESS_WIDTH-1:0];

    always @(posedge clk) begin
        // Port A
        if (weA) begin
            ram[addrA] <= dataA;
            qA <= dataA;
        end else begin
            qA <= ram[addrA];
        end
        // Port B
        if (weB) begin
            ram[addrB] <= dataB;
            qB <= dataB;
        end else begin
            qB <= ram[addrB];
        end
    end

endmodule //ramDualPort
