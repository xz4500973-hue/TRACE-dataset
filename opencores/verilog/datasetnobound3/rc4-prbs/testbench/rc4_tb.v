`define RC4
`define TEST_CYCLES 3000
`define KEY_SIZE 8
module rc4_tb;
    reg [7:0] password[0:`KEY_SIZE-1];
    parameter tck=4;  // 250MHz
    reg clk,rst; wire output_ready; wire [7:0] K; reg [7:0] password_input;
    always #(tck/2) clk=~clk;
    rc4 rc4mod (.clk(clk),.rst(rst),.password_input(password_input),.output_ready(output_ready),.K(K));
    integer clkcount;
    always @(posedge clk) begin
        clkcount<=clkcount+1;
        if(clkcount<`KEY_SIZE) password_input<=password[clkcount];
    end
    initial begin
        password[0]=8'hAA; password[1]=8'hBB; password[2]=8'hCC; password[3]=8'hDD;
        password[4]=8'hEE; password[5]=8'hFF; password[6]=8'h11; password[7]=8'h22;
        $dumpfile("rc4.vcd"); $dumpvars(0,rc4_tb);
        clk=0; rst=1; clkcount=0; password_input=password[0];
        #(1*tck); rst=0;
        #(8000*tck);
        $display("Finish."); $finish;
    end
endmodule