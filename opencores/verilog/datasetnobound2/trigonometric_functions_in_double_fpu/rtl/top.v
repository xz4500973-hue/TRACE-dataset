// top.v - dataset2: case-based enable selection

`timescale 1ns / 100ps
`define INPUT_WIDTH 32

(* keep_hierarchy = "yes" *) module top( enable, degrees, data1, rst, actv, clk) ;

input enable, rst, clk;
input [`INPUT_WIDTH-1:0] degrees;
input [2:0] actv;
output reg [63:0] data1;

reg [63:0] data, data_tmp;
reg [`INPUT_WIDTH-1:0] half_wave, full_wave, degrees_tmp1, degrees_tmp2;
reg [1:0] quad;
reg sin_enable, cos_enable, tan_enable, csc_enable, sec_enable, cot_enable;

wire [63:0] data_sin, data_cos, data_tan, data_csc, data_sec, data_cot;
wire [`INPUT_WIDTH-1:0] divider_out;

sine_lut      a1 (.quad(quad), .enable(sin_enable), .degrees(degrees_tmp2), .data(data_sin), .rst(rst), .clk(clk));
cosine_lut    a2 (.quad(quad), .enable(cos_enable), .degrees(degrees_tmp2), .data(data_cos), .rst(rst), .clk(clk));
tangent_lut   a3 (.quad(quad), .enable(tan_enable), .degrees(degrees_tmp2), .data(data_tan), .rst(rst), .clk(clk));
cosecant_lut  a4 (.quad(quad), .enable(csc_enable), .degrees(degrees_tmp2), .data(data_csc), .rst(rst), .clk(clk));
secant_lut    a5 (.quad(quad), .enable(sec_enable), .degrees(degrees_tmp2), .data(data_sec), .rst(rst), .clk(clk));
cotangent_lut a6 (.quad(quad), .enable(cot_enable), .degrees(degrees_tmp2), .data(data_cot), .rst(rst), .clk(clk));
dividor a7 (.clk(clk), .inp(degrees), .rst(rst), .out(divider_out));

always@(posedge clk) begin
  if(rst) begin
    sin_enable<=0;cos_enable<=0;tan_enable<=0;csc_enable<=0;sec_enable<=0;cot_enable<=0;
    half_wave<=0;full_wave<=0;degrees_tmp1<=0;degrees_tmp2<=0;quad<=0;
  end else begin
    half_wave <= divider_out; full_wave <= degrees;
    degrees_tmp1 <= (half_wave > 180) ? (half_wave-180) : half_wave;
    quad <= (half_wave==0) ? 0 : (half_wave>0 && half_wave<=90) ? 1 : (half_wave>90 && half_wave<=180) ? 2 : (half_wave>180 && half_wave<=270) ? 3 : 0;
    degrees_tmp2 <= degrees_tmp1;
    // Case-based enable (instead of if-else chain from original)
    case(actv)
      3'b001: begin sin_enable<=1; data_tmp<=data_sin; end
      3'b010: begin cos_enable<=1; data_tmp<=data_cos; end
      3'b011: begin tan_enable<=1; data_tmp<=data_tan; end
      3'b100: begin csc_enable<=1; data_tmp<=data_csc; end
      3'b101: begin sec_enable<=1; data_tmp<=data_sec; end
      3'b110: begin cot_enable<=1; data_tmp<=data_cot; end
      default: data_tmp<=data_sin;
    endcase
    data1 <= data_tmp;
  end
end

endmodule