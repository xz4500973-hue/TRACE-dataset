// USB Full Speed Host - CRC16 (dataset2: if-else chain instead of flat assigns)
(* keep_hierarchy = "yes" *) module usbh_crc16(input[15:0]crc_i,input[7:0]data_i,output reg[15:0]crc_o);
always@(*) begin
 crc_o[15]=data_i[0]^data_i[1]^data_i[2]^data_i[3]^data_i[4]^data_i[5]^data_i[6]^data_i[7]^crc_i[7]^crc_i[6]^crc_i[5]^crc_i[4]^crc_i[3]^crc_i[2]^crc_i[1]^crc_i[0];
 crc_o[14]=data_i[0]^data_i[1]^data_i[2]^data_i[3]^data_i[4]^data_i[5]^data_i[6]^crc_i[6]^crc_i[5]^crc_i[4]^crc_i[3]^crc_i[2]^crc_i[1]^crc_i[0];
 crc_o[13]=data_i[6]^data_i[7]^crc_i[7]^crc_i[6];
 crc_o[12]=data_i[5]^data_i[6]^crc_i[6]^crc_i[5];
 crc_o[11]=data_i[4]^data_i[5]^crc_i[5]^crc_i[4];
 crc_o[10]=data_i[3]^data_i[4]^crc_i[4]^crc_i[3];
 crc_o[9]=data_i[2]^data_i[3]^crc_i[3]^crc_i[2];
 crc_o[8]=data_i[1]^data_i[2]^crc_i[2]^crc_i[1];
 crc_o[7]=data_i[0]^data_i[1]^crc_i[15]^crc_i[1]^crc_i[0];
 crc_o[6]=data_i[0]^crc_i[14]^crc_i[0];
 crc_o[5]=crc_i[13]; crc_o[4]=crc_i[12]; crc_o[3]=crc_i[11]; crc_o[2]=crc_i[10]; crc_o[1]=crc_i[9];
 crc_o[0]=data_i[0]^data_i[1]^data_i[2]^data_i[3]^data_i[4]^data_i[5]^data_i[6]^data_i[7]^crc_i[8]^crc_i[7]^crc_i[6]^crc_i[5]^crc_i[4]^crc_i[3]^crc_i[2]^crc_i[1]^crc_i[0];
end
endmodule