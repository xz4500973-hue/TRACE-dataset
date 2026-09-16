/* PID testbench - 64bit bus, high frequency, static
 */
module PID_tb;
reg clk=0; reg rst=1;
always #2 clk=~clk;  // 250MHz

initial #10 rst=0;

wire wb_clk=clk; wire wb_rst=rst;
reg wb_cyc=0; reg wb_stb=0; reg wb_we=0; reg [15:0] wb_adr=0; reg [63:0] wb_dat_i=0;
wire [63:0] wb_dat_o; wire wb_ack;

PID #(.wb_nb(16), .adr_wb_nb(16)) uut(
  .i_clk(clk), .i_rst(rst),
  .i_wb_cyc(wb_cyc), .i_wb_stb(wb_stb), .i_wb_we(wb_we), .i_wb_adr(wb_adr),
  .i_wb_data(wb_dat_i), .o_wb_data(wb_dat_o), .o_wb_ack(wb_ack)
);

task wb_write; input [15:0] a; input [63:0] d;
begin @(posedge clk); wb_cyc<=1; wb_stb<=1; wb_we<=1; wb_adr<=a; wb_dat_i<=d;
@(posedge clk); while(!wb_ack) @(posedge clk); wb_cyc<=0; wb_stb<=0; wb_we<=0; end
endtask

initial begin
  $dumpfile("PID_tb.vcd");
	$dumpvars(0, PID_tb);
  #200;
  wb_write(0, 64'd500);   // kp=500
  wb_write(4, 64'd25);    // ki=25
  wb_write(8, 64'd200);   // kd=200
  wb_write(12, 64'd1000); // sp=1000
  wb_write(16, 64'd0);    // pv=0
  wb_write(44, 64'd0);    // RS=0
  #80000; $display("Done at %0t", $time); $finish;
end
endmodule