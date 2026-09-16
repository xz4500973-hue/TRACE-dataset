// USB Full Speed Host - FIFO (dataset2: ternary count control)
(* keep_hierarchy = "yes" *) module usbh_fifo(input clk_i,rst_i,input[7:0]data_i,input push_i,pop_i,flush_i,output full_o,empty_o,output[7:0]data_o);
parameter WIDTH=8,DEPTH=64,ADDR_W=6; localparam COUNT_W=ADDR_W+1;
reg[WIDTH-1:0]ram[DEPTH-1:0]; reg[ADDR_W-1:0]rd_ptr,wr_ptr; reg[COUNT_W-1:0]count;
always@(posedge clk_i or posedge rst_i) if(rst_i)begin count<=0;rd_ptr<=0;wr_ptr<=0;end else begin
 if(flush_i)begin count<=0;rd_ptr<=0;wr_ptr<=0;end
 if(push_i&~full_o)begin ram[wr_ptr]<=data_i; wr_ptr<=wr_ptr+1;end
 if(pop_i&~empty_o) rd_ptr<=rd_ptr+1;
 // Ternary count
 if((push_i&~full_o)&~(pop_i&~empty_o)) count<=count+1;
 else if(~(push_i&~full_o)&(pop_i&~empty_o)) count<=count-1;
end
assign full_o=(count==DEPTH); assign empty_o=(count==0); assign data_o=ram[rd_ptr];
endmodule