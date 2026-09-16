/*
 * Milkymist VJ SoC
 * Copyright (C) 2007, 2008, 2009 Sebastien Bourdeauducq
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

(* keep_hierarchy = "yes" *) module hpdmc_banktimer(
	input sys_clk,
	input sdram_rst,
	
	input tim_cas,
	input [1:0] tim_wr,
	
	input read,
	input write,
	output reg precharge_safe
);

reg [2:0] counter;
always @(posedge sys_clk) begin
	if(sdram_rst) begin
		counter <= 3'd0;
		precharge_safe <= 1'b1;
	end else begin
		if(read) begin
			counter <= 3'd4;
			precharge_safe <= 1'b0;
		end else if(write) begin
			counter <= {1'b1, tim_wr};
			precharge_safe <= 1'b0;
		end else begin
			if(counter == 3'd0) begin
				precharge_safe <= 1'b1;
			end else if(counter == 3'd1) begin
				precharge_safe <= 1'b1;
				counter <= 3'd0;
			end else if(counter == 3'd2) begin
				counter <= 3'd1;
			end else if(counter == 3'd3) begin
				counter <= 3'd2;
			end else if(counter == 3'd4) begin
				counter <= 3'd3;
			end else if(counter == 3'd5) begin
				counter <= 3'd4;
			end else begin
				counter <= 3'd0;
			end
		end
	end
end

endmodule