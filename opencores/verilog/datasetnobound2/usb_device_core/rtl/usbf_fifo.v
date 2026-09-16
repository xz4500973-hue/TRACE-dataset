// USB Device Core - FIFO (dataset2: case-based count)
module usbf_fifo
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input  [  7:0]  data_i
    ,input           push_i
    ,input           pop_i
    ,input           flush_i

    // Outputs
    ,output          full_o
    ,output          empty_o
    ,output [  7:0]  data_o
);
parameter WIDTH=8,DEPTH=4,ADDR_W=2; localparam COUNT_W=ADDR_W+1;
reg[WIDTH-1:0]ram[DEPTH-1:0];reg[ADDR_W-1:0]rd_ptr,wr_ptr;reg[COUNT_W-1:0]count;
always@(posedge clk_i or posedge rst_i) if(rst_i)begin count<=0;rd_ptr<=0;wr_ptr<=0;end else begin
 if(flush_i)begin count<=0;rd_ptr<=0;wr_ptr<=0;end
 if(push_i&~full_o)begin ram[wr_ptr]<=data_i;wr_ptr<=wr_ptr+1;end
 if(pop_i&~empty_o)rd_ptr<=rd_ptr+1;
 case({push_i&~full_o,pop_i&~empty_o}) 2'b10:count<=count+1;2'b01:count<=count-1;default:;endcase
end
assign full_o=(count==DEPTH);assign empty_o=(count==0);assign data_o=ram[rd_ptr];
endmodule