/* cordic.v - dataset3: pipeline shift reg, two-process rotator */

`define XY_BITS 16
`define THETA_BITS 16
`define ITERATIONS 16
`define ITERATION_BITS 4
`define PIPELINE
`define ROTATE
`define CORDIC_GAIN 17'd53955
`define CORDIC_1 17'd19896
`define GENERATE_LOOP

(* keep_hierarchy = "yes" *) module signed_shifter(input[`ITERATION_BITS-1:0]i,input signed[`XY_BITS:0]D,output reg signed[`XY_BITS:0]Q);
reg[`XY_BITS:0] pipeline[0:15]; integer j;
always@* begin pipeline[0]=D; for(j=0;j<i;j=j+1) pipeline[j+1]=(pipeline[j]>>1)|(D[`XY_BITS]<<`XY_BITS); Q=pipeline[i]; end
endmodule

(* keep_hierarchy = "yes" *) module rotator(input clk,rst,input signed[`XY_BITS:0]x_i,y_i,input signed[`THETA_BITS:0]z_i,
 output signed[`XY_BITS:0]x_o,y_o,output signed[`THETA_BITS:0]z_o);
parameter[`ITERATION_BITS-1:0] iteration=0;
parameter signed[`THETA_BITS:0] tangle=0;
reg signed[`XY_BITS:0] x_1,y_1;
reg signed[`THETA_BITS:0] z_1;
wire signed[`XY_BITS:0] x_i_shifted,y_i_shifted;
signed_shifter xs(iteration,x_i,x_i_shifted);
signed_shifter ys(iteration,y_i,y_i_shifted);
// Next-state wires (two-process)
wire signed[`XY_BITS:0] nxt_x = (z_i<0) ? (x_i+y_i_shifted) : (x_i-y_i_shifted);
wire signed[`XY_BITS:0] nxt_y = (z_i<0) ? (y_i-x_i_shifted) : (y_i+x_i_shifted);
wire signed[`THETA_BITS:0] nxt_z = (z_i<0) ? (z_i+tangle) : (z_i-tangle);
always@(posedge clk) if(rst) begin x_1<=0;y_1<=0;z_1<=0;end else begin x_1<=nxt_x;y_1<=nxt_y;z_1<=nxt_z;end
assign x_o=x_1; assign y_o=y_1; assign z_o=z_1;
endmodule

(* keep_hierarchy = "yes" *) module cordic(input clk,rst,input signed[`XY_BITS:0]x_i,y_i,input signed[`THETA_BITS:0]theta_i,
 output signed[`XY_BITS:0]x_o,y_o,output signed[`THETA_BITS:0]theta_o);

function[`THETA_BITS:0]tanangle; input[3:0]i;
 case(i) 0:tanangle=17'd25735;1:tanangle=17'd15192;2:tanangle=17'd8027;3:tanangle=17'd4075;
 4:tanangle=17'd2045;5:tanangle=17'd1024;6:tanangle=17'd512;7:tanangle=17'd256;
 8:tanangle=17'd128;9:tanangle=17'd64;10:tanangle=17'd32;11:tanangle=17'd16;
 12:tanangle=17'd8;13:tanangle=17'd4;14:tanangle=17'd2;15:tanangle=17'd1; endcase endfunction

wire signed[`XY_BITS:0] x[`ITERATIONS:0],y[`ITERATIONS:0];
wire signed[`THETA_BITS:0] z[`ITERATIONS:0];
assign x[0]=x_i; assign y[0]=y_i; assign z[0]=theta_i;
assign x_o=x[`ITERATIONS]; assign y_o=y[`ITERATIONS]; assign theta_o=z[`ITERATIONS];
// Extra pipeline stage at end
genvar i; generate for(i=0;i<`ITERATIONS;i=i+1) begin:stg
 rotator #(.iteration(i),.tangle(tanangle(i))) U(.clk(clk),.rst(rst),
   .x_i(x[i]),.y_i(y[i]),.z_i(z[i]),.x_o(x[i+1]),.y_o(y[i+1]),.z_o(z[i+1]));
end endgenerate
endmodule