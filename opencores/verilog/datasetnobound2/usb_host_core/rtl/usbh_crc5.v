// USB Full Speed Host - CRC5 (dataset2: case-based lookup)
(* keep_hierarchy = "yes" *) module usbh_crc5(input[4:0]crc_i,input[10:0]data_i,output reg[4:0]crc_o);
always@(*) case({data_i,crc_i})
// Generated CRC5: compact case-based
0: crc_o=5'b00000;
default: begin
 crc_o[0]=data_i[10]^data_i[9]^data_i[6]^data_i[5]^data_i[3]^data_i[0]^crc_i[0]^crc_i[3]^crc_i[4];
 crc_o[1]=data_i[10]^data_i[7]^data_i[6]^data_i[4]^data_i[1]^crc_i[0]^crc_i[1]^crc_i[4];
 crc_o[2]=data_i[10]^data_i[9]^data_i[8]^data_i[7]^data_i[6]^data_i[3]^data_i[2]^data_i[0]^crc_i[0]^crc_i[1]^crc_i[2]^crc_i[3]^crc_i[4];
 crc_o[3]=data_i[10]^data_i[9]^data_i[8]^data_i[7]^data_i[4]^data_i[3]^data_i[1]^crc_i[1]^crc_i[2]^crc_i[3]^crc_i[4];
 crc_o[4]=data_i[10]^data_i[9]^data_i[8]^data_i[5]^data_i[4]^data_i[2]^crc_i[2]^crc_i[3]^crc_i[4];
end endcase
endmodule