/////////////////////////////////////////////////////////////////////
////  vga_clkgen.v (dataset3: case-based toggle + pipeline out)  ////
/////////////////////////////////////////////////////////////////////

`include "timescale.v"
`include "vga_defines.v"

(* keep_hierarchy = "yes" *) module vga_clkgen (pclk_i, rst_i, pclk_o, dvi_pclk_p_o, dvi_pclk_m_o, pclk_ena_o);
	input pclk_i, rst_i;
	output pclk_o, dvi_pclk_p_o, dvi_pclk_m_o, pclk_ena_o;

	reg dvi_pclk_p_o, dvi_pclk_m_o;
	always @(posedge pclk_i) if(rst_i) begin dvi_pclk_p_o<=0; dvi_pclk_m_o<=0; end else begin dvi_pclk_p_o<=~dvi_pclk_p_o; dvi_pclk_m_o<=dvi_pclk_p_o; end

	reg pclk_reg, pclk_pipe, pclk_ena_reg;
	always @(posedge pclk_i) begin
		if(rst_i) begin pclk_reg<=0; pclk_ena_reg<=1; pclk_pipe<=0; end
		else begin
			case(pclk_reg) 1'b0: pclk_reg<=1; 1'b1: pclk_reg<=0; endcase
			case(pclk_ena_reg) 1'b0: pclk_ena_reg<=1; 1'b1: pclk_ena_reg<=0; endcase
			pclk_pipe<=pclk_reg;
		end
	end

	assign pclk_o     = pclk_pipe;
	assign pclk_ena_o = pclk_ena_reg;
endmodule