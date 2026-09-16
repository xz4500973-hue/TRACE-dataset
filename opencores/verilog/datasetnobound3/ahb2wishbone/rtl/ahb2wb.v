// VARIANT: Merged single sequential always + all outputs registered
`timescale 1 ns/1 ns

(* keep_hierarchy = "yes" *) module ahb2wb(
	adr_o, dat_o, dat_i, ack_i, cyc_o,
	we_o, stb_o, hclk, hresetn, haddr, htrans, hwrite, hsize, hburst,
	hsel, hwdata, hrdata, hresp, hready, clk_i, rst_i
	);
	parameter AWIDTH = 16;
	parameter DWIDTH = 32;

	input [DWIDTH-1:0] dat_i;
	input ack_i;
	input clk_i;
	input rst_i;
	input hclk;
	input hresetn;
	input [DWIDTH-1:0] hwdata;
	input hwrite;
	input [2:0] hburst;
	input [2:0] hsize;
	input [1:0] htrans;
	input hsel;
	input [AWIDTH-1:0] haddr;

	output wire [AWIDTH-1:0] adr_o;
	output reg [DWIDTH-1:0] dat_o;
	output reg cyc_o;
	output wire we_o;
	output reg stb_o;
	output reg [DWIDTH-1:0] hrdata;
	output reg [1:0] hresp;
	output reg hready;

	reg [AWIDTH-1:0] addr_temp;
	reg hwrite_temp;

	// Single merged sequential always
	always @(posedge hclk) begin
		if (!hresetn) begin
			hresp  <= 2'b00;
			cyc_o <= 'b0;
			stb_o <= 'b0;
			addr_temp <= 'bx;
			hwrite_temp <= 'bx;
			hready <= 'b1;
		end else begin
			if (hready & hsel) begin
				// Address phase capture
				if (hburst == 3'b000 && htrans == 2'b10) begin
					addr_temp <= haddr;
					hwrite_temp <= hwrite;
				end
				// Control decoding - if-else chain
				if (hburst == 3'b000) begin
					if (htrans == 2'b00) begin cyc_o <= 'b0; hresp <= 2'b00; stb_o <= 'b0; end
					else if (htrans == 2'b01) begin hresp <= 2'b00; stb_o <= 'b0; cyc_o <= 'b1; end
					else if (htrans == 2'b10) begin cyc_o <= 'b1; stb_o <= 'b1; end
				end else cyc_o <= 'b0;
			end else if (!hsel & hready) begin
				cyc_o <= 'b0;
			end
			// Registered data path
			hready <= stb_o ? ack_i : 'b1;
			if (hwrite_temp) dat_o <= hwdata; else hrdata <= dat_i;
		end
	end

	assign we_o = hwrite_temp;
	assign adr_o = addr_temp;
		
endmodule