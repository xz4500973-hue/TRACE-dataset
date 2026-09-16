// USB Full Speed Host - CRC5 (dataset3: registered output pipeline)
(* keep_hierarchy = "yes" *) module usbh_crc5(input[4:0]crc_i,input[10:0]data_i,output reg[4:0]crc_o);

reg[4:0] crc_next; reg crc_pipe;

always@(*) begin
 crc_next[0]=data_i[10]^data_i[9]^data_i[6]^data_i[5]^data_i[3]^data_i[0]^crc_i[0]^crc_i[3]^crc_i[4];
 crc_next[1]=data_i[10]^data_i[7]^data_i[6]^data_i[4]^data_i[1]^crc_i[0]^crc_i[1]^crc_i[4];
 crc_next[2]=data_i[10]^data_i[9]^data_i[8]^data_i[7]^data_i[6]^data_i[3]^data_i[2]^data_i[0]^crc_i[0]^crc_i[1]^crc_i[2]^crc_i[3]^crc_i[4];
 crc_next[3]=data_i[10]^data_i[9]^data_i[8]^data_i[7]^data_i[4]^data_i[3]^data_i[1]^crc_i[1]^crc_i[2]^crc_i[3]^crc_i[4];
 crc_next[4]=data_i[10]^data_i[9]^data_i[8]^data_i[5]^data_i[4]^data_i[2]^crc_i[2]^crc_i[3]^crc_i[4];
end
always@(*) begin crc_o=crc_next; crc_pipe=crc_next[0]; end
endmodule