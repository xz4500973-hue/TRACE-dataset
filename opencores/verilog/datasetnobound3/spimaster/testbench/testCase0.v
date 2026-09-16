// ---------------------------------- testcase0.v (variant 3) ----------------------------
`include "timescale.v"
`include "spiMaster_defines.v"

module testCase0();

reg ack;
reg [7:0] data;
reg [15:0] dataWord;
reg [7:0] dataRead;
reg [7:0] dataWrite;
integer i;
integer j;

initial
begin
  $write("\n\n");
  #1000;

  //write to block addr reg, and read back
  $write("Testing register read/write\n");
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SPI_CLK_DEL_REG , 8'h08);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SPI_CLK_DEL_REG , 8'h08);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_7_0_REG , 8'h11);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_15_8_REG , 8'h22);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_23_16_REG , 8'h33);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_31_24_REG , 8'h44);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_7_0_REG , 8'h11);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_15_8_REG , 8'h22);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_23_16_REG , 8'h33);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_31_24_REG , 8'h44);

  //write one byte to spi bus, and wait for complete
  $write("Testing SPI bus direct access\n");
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_TYPE_REG , {6'b000000, `DIRECT_ACCESS});
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`DIRECT_ACCESS_DATA_REG , 8'hf0);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_CTRL_REG , {7'b0000000, `TRANS_START});
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  while (dataRead[0] == `TRANS_BUSY) 
    testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);

  //init test
  $write("Testing SD init\n");
  testHarness.u_sdModel.setRespByte(8'h01);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_TYPE_REG , {6'b000000, `INIT_SD});
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_CTRL_REG , {7'b0000000, `TRANS_START});
  #60000;
  testHarness.u_sdModel.setRespByte(8'h00);
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  while (dataRead[0] == `TRANS_BUSY) 
    testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_ERROR_REG , dataRead);
  if (dataRead[1:0] == `INIT_NO_ERROR)
    $write("SD init test passed\n");
  else
    $write("---- ERROR: SD init test failed. Error code = 0x%01x\n", dataRead[1:0] );

  //block write (alternating pattern)
  $write("Testing block write\n");
  for (i=0; i<=255; i=i+1) begin
    testHarness.u_wb_master_model.wb_write(1, `TX_FIFO_BASE+`FIFO_DATA_REG , 8'haa);
    testHarness.u_wb_master_model.wb_write(1, `TX_FIFO_BASE+`FIFO_DATA_REG , 8'h55);
  end
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_TYPE_REG , {6'b000000, `RW_WRITE_SD_BLOCK});
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_CTRL_REG , {7'b0000000, `TRANS_START});
  #100000;
  testHarness.u_sdModel.setRespByte(8'h05);
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  if (dataRead[0] == `TRANS_BUSY) begin
    $write("---- ERROR: SD block write failed to complete\n");
  end
  else begin
    testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_ERROR_REG , dataRead);
    if (dataRead[5:4] == `WRITE_NO_ERROR)
      $write("SD block write passed\n");
    else
      $write("---- ERROR: SD block write failed. Error code = 0x%01x\n", dataRead[5:4] );
  end

  $write("Finished all tests (variant 3)\n");
  $stop;	

end

endmodule