// VARIANT: Split PCM TX path into 2 separate always blocks + always@* for state decoder
(* keep_hierarchy = "yes" *) module AIC1106_PCM(
        csi_avalon_clk, csi_reset, csi_audio_clk,
        avs_creg_address, avs_creg_chipselect, avs_creg_write, avs_creg_read, avs_creg_writedata, avs_creg_readdata,
        asi_data, asi_valid, asi_ready,
        aso_data, aso_valid,
        coe_mclk, coe_pcmsyn, coe_pcmi, coe_pcmo, coe_reset_n, coe_mute, coe_linsel);
         
input                   csi_avalon_clk;
input                   csi_reset;          
input                   csi_audio_clk;
output   [ 31:0]        avs_creg_readdata;
input    [  1:0]        avs_creg_address;
input                   avs_creg_chipselect;
input                   avs_creg_read;
input                   avs_creg_write;
input    [ 31:0]        avs_creg_writedata;          
input    [ 31:0]        asi_data;
input                   asi_valid;
output                  asi_ready;
output                  aso_valid;
output   [31:0]         aso_data;
output                  coe_mclk;
output                  coe_pcmsyn;
output                  coe_pcmi;
input                   coe_pcmo;
output                  coe_reset_n;
output                  coe_mute;
output   wire           coe_linsel;
assign coe_linsel = 1'b0;

reg                     enable_r;
reg                     loopback_r;
reg                     reset_req_r;
reg                     pcmsyn_r;
reg                     mute_r;
reg                     underflow_r;
reg      [31:0]         tx_latch_r;
reg      [31:0]         rx_latch_r;
reg      [15:0]         tx_shft_r;
reg      [15:0]         rx_shft_r;
reg      [2:0]          volume_r;
reg                     asi_ready_r;
reg                     aso_valid_r;
reg                     reset_r;
reg      [8:0]          main_cnt;

wire                    asi_ready = asi_ready_r;
wire                    aso_valid = aso_valid_r;
assign                  aso_data[31:0] = rx_latch_r[31:0];
wire                    coe_mclk = csi_audio_clk & enable_r;
wire                    coe_pcmsyn = pcmsyn_r & enable_r;
wire                    coe_pcmi = tx_shft_r[15] & enable_r;
wire                    coe_mute = mute_r;
wire                    coe_reset_n = reset_r;
wire                    rx_shft_in = (loopback_r)?(coe_pcmi):(coe_pcmo);

// VARIANT: State decode using always@* instead of assign
reg fs_avalon_rdy_on, fs_avalon_rdy_off, fs_txlatch;
reg fs_pcmsyn1_on, fs_pcmsyn1_off, fs_shift1;
reg fs_rxlatch1, fs_pcmsyn2_on, fs_pcmsyn2_off;
reg fs_shift2, fs_rxlatch2, fs_rxvalid_off;

always @* begin
    fs_avalon_rdy_on   = (main_cnt == 9'd0);
    fs_avalon_rdy_off  = (main_cnt == 9'd1);
    fs_txlatch         = (main_cnt == 9'd2);
    fs_pcmsyn1_on      = (main_cnt == 9'd3);
    fs_pcmsyn1_off     = (main_cnt == 9'd4);
    fs_shift1          = ((main_cnt > 9'd4) && (main_cnt <= 9'd20));
    fs_rxlatch1        = (main_cnt == 9'd21);
    fs_pcmsyn2_on      = (main_cnt == 9'd259);
    fs_pcmsyn2_off     = (main_cnt == 9'd260);
    fs_shift2          = ((main_cnt > 9'd260) && (main_cnt <= 9'd276));
    fs_rxlatch2        = (main_cnt == 9'd277);
    fs_rxvalid_off     = (main_cnt == 9'd278);
end

wire     [31:0]         state;
assign state = {25'b0, underflow_r, coe_mute, ~coe_reset_n, 1'b0, volume_r[2:0]}; 
assign                  avs_creg_readdata = (avs_creg_address[1:0] == 2'h0)?(state):(0);
wire                    creg_reg_sel_w;
assign   creg_reg_sel_w    = avs_creg_write & avs_creg_chipselect & (avs_creg_address[1:0] == 2'h0); 

always @(posedge csi_avalon_clk or posedge csi_reset) begin
   if (csi_reset) begin
      reset_req_r <= 0; mute_r <= 0; volume_r[2:0] <= 1;
      loopback_r <= 0; enable_r <= 0;
   end else if (creg_reg_sel_w) begin
      volume_r[2:0] <= avs_creg_writedata[2:0]; 
      mute_r        <= avs_creg_writedata[3];
      enable_r      <= avs_creg_writedata[4];
      loopback_r    <= avs_creg_writedata[5];
      reset_req_r   <= avs_creg_writedata[6];
   end   
end 

always @(negedge csi_audio_clk or posedge reset_req_r) begin
   if (reset_req_r) rx_shft_r <= 0;
   else if (fs_shift1 || fs_shift2)
      rx_shft_r[15:0] <= {rx_shft_r[14:0], rx_shft_in};
end

// VARIANT: Split RX path into two separate always blocks
always @(posedge csi_audio_clk or posedge reset_req_r) begin
   if (reset_req_r) begin
      rx_latch_r <= 0;
   end else begin
      if (fs_rxlatch1) rx_latch_r[15:0] <= rx_shft_r[15:0];
      else if (fs_rxlatch2) rx_latch_r[31:16] <= rx_shft_r[15:0];
   end
end

always @(posedge csi_audio_clk or posedge reset_req_r) begin
   if (reset_req_r) aso_valid_r <= 0;
   else begin
      if (fs_rxlatch2) aso_valid_r <= 1;
      else if (fs_rxvalid_off) aso_valid_r <= 0;
   end
end

// VARIANT: Split TX path into two separate always blocks (counter+control vs shifter)
always @(posedge csi_audio_clk or posedge reset_req_r) begin
   if (reset_req_r) begin
      main_cnt <= 0;
      underflow_r <= 0;
      asi_ready_r <= 0;
      pcmsyn_r <= 0;
   end else begin
      main_cnt <= main_cnt + 1'b1;
      if (fs_avalon_rdy_on) asi_ready_r <= 1;
      else if (fs_avalon_rdy_off) asi_ready_r <= 0;
      else if (fs_txlatch) begin
         if (asi_valid) tx_latch_r[31:0] <= asi_data[31:0];
         else begin underflow_r <= 1; tx_latch_r[31:0] <= 0; end
      end
      else if (fs_pcmsyn1_on) begin pcmsyn_r <= 1; end
      else if (fs_pcmsyn1_off) begin pcmsyn_r <= 0; end
      else if (fs_pcmsyn2_on) begin pcmsyn_r <= 1; end
      else if (fs_pcmsyn2_off) begin pcmsyn_r <= 0; end
   end
end

always @(posedge csi_audio_clk or posedge reset_req_r) begin
   if (reset_req_r) tx_shft_r <= 0;
   else begin
      if (fs_pcmsyn1_on) tx_shft_r[15:0] <= {tx_latch_r[12:0], volume_r[2:0]};
      else if (fs_shift1) tx_shft_r[15:0] <= {tx_shft_r[14:0], 1'b0};
      else if (fs_pcmsyn2_on) tx_shft_r[15:0] <= {tx_latch_r[28:16], volume_r[2:0]};
      else if (fs_shift2) tx_shft_r[15:0] <= {tx_shft_r[14:0], 1'b0};
   end
end

always @(posedge csi_audio_clk) reset_r <= ~(reset_req_r | csi_reset);

endmodule