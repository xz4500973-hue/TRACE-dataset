`timescale 1ns/1ps
`define XY_BITS 16
`define THETA_BITS 16
`define ITERATIONS 16
`define ITERATION_BITS 4
`define PIPELINE
`define ROTATE
`define CORDIC_GAIN 17'd53955
`define CORDIC_1 17'd19896
`define GENERATE_LOOP
module tb ();
  wire [`XY_BITS:0] x_o,y_o;
  wire [`THETA_BITS:0] theta_o;
  reg  [`XY_BITS:0] x_i,y_i;
  reg  [`THETA_BITS:0] theta_i;
  reg clock,reset;

  cordic UUT (.clk(clock),.rst(reset),.x_i(x_i),.y_i(y_i),.theta_i(theta_i),
              .x_o(x_o),.y_o(y_o),.theta_o(theta_o));

  integer i;

  initial begin
    $dumpfile("cordic.vcd");
    $dumpvars(0, tb);

    clock<=0; reset<=1;
    x_i<=0; y_i<=0; theta_i<=0;
    #2 reset<=0;

    // Single angle: 45 degrees (pi/4)
    theta_i<=17'd25735;
    x_i<=`CORDIC_1; y_i<=0;
    #1 clock<=1;#1 clock<=0;

    for(i=0;i<(`ITERATIONS+20);i=i+1) begin #1 clock<=1;#1 clock<=0; end
    $display("Done at %0t",$time);
    $finish;
  end

endmodule