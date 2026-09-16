// ---------------------------------- testcase0.v (variant 4) ----------------------------
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
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SPI_CLK_DEL_REG , 8'h30);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SPI_CLK_DEL_REG , 8'h30);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_7_0_REG , 8'hef);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_15_8_REG , 8'hcd);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_23_16_REG , 8'hab);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`SD_ADDR_31_24_REG , 8'h89);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_7_0_REG , 8'hef);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_15_8_REG , 8'hcd);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_23_16_REG , 8'hab);
  testHarness.u_wb_master_model.wb_cmp(1, `CTRL_STS_REG_BASE+`SD_ADDR_31_24_REG , 8'h89);

  //init test (different timing)
  $write("Testing SD init\n");
  testHarness.u_sdModel.setRespByte(8'h01);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_TYPE_REG , {6'b000000, `INIT_SD});
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_CTRL_REG , {7'b0000000, `TRANS_START});
  #80000;
  testHarness.u_sdModel.setRespByte(8'h00);
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  while (dataRead[0] == `TRANS_BUSY) 
    testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_ERROR_REG , dataRead);
  if (dataRead[1:0] == `INIT_NO_ERROR)
    $write("SD init test passed\n");
  else
    $write("---- ERROR: SD init test failed. Error code = 0x%01x\n", dataRead[1:0] );

  //block read only (no write)
  $write("Testing block read\n");
  testHarness.u_sdModel.setRespByte(8'h00);
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_TYPE_REG , {6'b000000, `RW_READ_SD_BLOCK});
  testHarness.u_wb_master_model.wb_write(1, `CTRL_STS_REG_BASE+`TRANS_CTRL_REG , {7'b0000000, `TRANS_START});
  #100000;
  testHarness.u_sdModel.setRespByte(8'hfe);
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  #8000000;
  testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_STS_REG , dataRead);
  if (dataRead[0] == `TRANS_BUSY) begin
    $write("---- ERROR: SD block read failed to complete\n");
  end
  else begin
    testHarness.u_wb_master_model.wb_read(1, `CTRL_STS_REG_BASE+`TRANS_ERROR_REG , dataRead);
    if (dataRead[3:2] == `READ_NO_ERROR)
      $write("SD block read passed\n");
    else
      $write("---- ERROR: SD block read failed. Error code = 0x%01x\n", dataRead[3:2] );
  end

  $write("Finished all tests (variant 4)\n");
  $stop;	

end

endmodule