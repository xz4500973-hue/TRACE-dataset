// USB Full Speed Host - CRC16 (dataset3: variable reduction with extra pipe)
(* keep_hierarchy = "yes" *) module usbh_crc16(input[15:0]crc_i,input[7:0]data_i,output[15:0]crc_o);
wire x0=data_i[0]^crc_i[0]; wire x1=data_i[1]^crc_i[1];
wire x2=data_i[2]^crc_i[2]; wire x3=data_i[3]^crc_i[3];
wire x4=data_i[4]^crc_i[4]; wire x5=data_i[5]^crc_i[5];
wire x6=data_i[6]^crc_i[6]; wire x7=data_i[7]^crc_i[7];
reg[15:0] crc_pipe;
assign crc_o[15]=x0^x1^x2^x3^x4^x5^x6^x7;
assign crc_o[14]=x0^x1^x2^x3^x4^x5^x6;
assign crc_o[13]=data_i[6]^data_i[7]^crc_i[7]^crc_i[6];
assign crc_o[12]=data_i[5]^data_i[6]^crc_i[6]^crc_i[5];
assign crc_o[11]=data_i[4]^data_i[5]^crc_i[5]^crc_i[4];
assign crc_o[10]=data_i[3]^data_i[4]^crc_i[4]^crc_i[3];
assign crc_o[9]=data_i[2]^data_i[3]^crc_i[3]^crc_i[2];
assign crc_o[8]=data_i[1]^data_i[2]^crc_i[2]^crc_i[1];
assign crc_o[7]=data_i[0]^data_i[1]^crc_i[15]^crc_i[1]^crc_i[0];
assign crc_o[6]=data_i[0]^crc_i[14]^crc_i[0];
assign crc_o[5]=crc_i[13]; assign crc_o[4]=crc_i[12]; assign crc_o[3]=crc_i[11]; assign crc_o[2]=crc_i[10]; assign crc_o[1]=crc_i[9];
assign crc_o[0]=x0^x1^x2^x3^x4^x5^x6^x7;
endmodule