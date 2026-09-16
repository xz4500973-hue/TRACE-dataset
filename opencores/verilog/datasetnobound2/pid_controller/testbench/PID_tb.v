/* PID testbench - 16bit bus, low frequency
 */
module PID_tb;
reg clk=0; reg rst=1;
always #20 clk=~clk;  // 25MHz

initial #10 rst=0;

wire wb_clk=clk; wire wb_rst=rst;
reg wb_cyc=0; reg wb_stb=0; reg wb_we=0; reg [15:0] wb_adr=0; reg [15:0] wb_dat_i=0;
wire [15:0] wb_dat_o; wire wb_ack;

PID #(.wb_nb(16), .adr_wb_nb(16)) uut(
  .i_clk(clk), .i_rst(rst),
  .i_wb_cyc(wb_cyc), .i_wb_stb(wb_stb), .i_wb_we(wb_we), .i_wb_adr(wb_adr),
  .i_wb_data(wb_dat_i), .o_wb_data(wb_dat_o), .o_wb_ack(wb_ack)
);

task wb_write; input [15:0] a; input [15:0] d;
begin @(posedge clk); wb_cyc<=1; wb_stb<=1; wb_we<=1; wb_adr<=a; wb_dat_i<=d;
@(posedge clk); while(!wb_ack) @(posedge clk); wb_cyc<=0; wb_stb<=0; wb_we<=0; end
endtask

initial begin
  $dumpfile("PID_tb.vcd");
  $dumpvars(0, PID_tb);
  #200;
  wb_write(0, 100);   // kp=100
  wb_write(4, 10);    // ki=10
  wb_write(8, 50);    // kd=50
  wb_write(12, 200);  // sp=200
  wb_write(16, 0);    // pv=0
  wb_write(44, 0);    // RS=0
  #50000; $display("Done at %0t", $time); $finish;
end
endmodule