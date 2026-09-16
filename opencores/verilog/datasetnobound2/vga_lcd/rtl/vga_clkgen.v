/////////////////////////////////////////////////////////////////////
////  vga_clkgen.v (dataset2: if-else chain pclk gen)            ////
/////////////////////////////////////////////////////////////////////

`include "timescale.v"
`include "vga_defines.v"

module vga_clkgen (pclk_i, rst_i, pclk_o, dvi_pclk_p_o, dvi_pclk_m_o, pclk_ena_o);
	input pclk_i, rst_i;
	output pclk_o, dvi_pclk_p_o, dvi_pclk_m_o, pclk_ena_o;

	reg dvi_pclk_p_o, dvi_pclk_m_o;
	always @(posedge pclk_i)
		if(rst_i) begin dvi_pclk_p_o<=0; dvi_pclk_m_o<=0; end
		else begin dvi_pclk_p_o<=~dvi_pclk_p_o; dvi_pclk_m_o<=dvi_pclk_p_o; end

	// If-else chain style
	reg pclk_out_reg, pclk_ena_reg;
	always @(posedge pclk_i)
		if(rst_i) begin pclk_out_reg<=0; pclk_ena_reg<=1; end
		else begin pclk_out_reg<=~pclk_out_reg; pclk_ena_reg<=~pclk_ena_reg; end

	assign pclk_o     = pclk_out_reg;
	assign pclk_ena_o = pclk_ena_reg;
endmodule