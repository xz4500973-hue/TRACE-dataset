//////////////////////////////////////////////////////////////////
////
////  AES TESTBENCH - ECB STRESS MODE
////  Repeated ECB encryption with random data and key
////
//////////////////////////////////////////////////////////////////

module tb_aes_ip();

localparam AES_CR    = 4'd00;
localparam AES_SR    = 4'd01;
localparam AES_DINR  = 4'd02;
localparam AES_DOUTR = 4'd03;
localparam AES_KEYR0 = 4'd04;
localparam AES_KEYR1 = 4'd05;
localparam AES_KEYR2 = 4'd06;
localparam AES_KEYR3 = 4'd07;
localparam AES_IVR0  = 4'd08;
localparam AES_IVR1  = 4'd09;
localparam AES_IVR2  = 4'd10;
localparam AES_IVR3  = 4'd11;

localparam DMAOUTEN    = 32'h00000001 << 12;
localparam DMAINEN     = 32'h00000001 << 11;
localparam ERRIE       = 32'h00000001 << 10;
localparam CCFIE       = 32'h00000001 << 9;
localparam ERRC        = 32'h00000001 << 8;
localparam CCFC        = 32'h00000001 << 7;
localparam EBC         = 32'h00000000;
localparam CBC         = 32'h00000001 << 5;
localparam CTR         = 32'h00000001 << 6;
localparam ENCRYPTION  = 32'h00000000;
localparam KEY_DERIV   = 32'h00000001 << 3;
localparam DECRYPTION  = 32'h00000001 << 4;
localparam KEY_DECRYP  = KEY_DERIV | DECRYPTION;
localparam ENABLE      = 32'h00000001;
localparam DISABLE     = 32'h00000000;

wire int_ccf, int_err;
wire dma_req_wr, dma_req_rd;
wire [31:0] PRDATA;
wire PREADY, PSLVERR;

reg [31:0] PWDATA;
reg [3:0] PADDR;
reg PCLK, PRESETn;
reg PSEL, PENABLE, PWRITE;

reg [127:0] data_in;
reg [127:0] key_in;
reg [127:0] result;
reg [127:0] golden;
reg [127:0] result_rd;
reg [127:0] iv_rd;
reg [127:0] key_rd;
reg error_chk;

aes_ip AES_IP
(
	.int_ccf    ( int_ccf    ),
	.int_err    ( int_err    ),
	.dma_req_wr ( dma_req_wr ),
	.dma_req_rd ( dma_req_rd ),
	.PRDATA     ( PRDATA     ),
	.PREADY     ( PREADY     ),
  .PSLVERR    ( PSLVERR    ),
  .PWDATA     ( PWDATA     ),    
  .PADDR      ( PADDR      ),     
  .PSEL       ( PSEL       ),      
  .PENABLE    ( PENABLE    ),   
  .PWRITE     ( PWRITE     ),    
  .PCLK       ( PCLK       ),      
  .PRESETn    ( PRESETn    )
);   // 使用 SystemVerilog .* 连接 (若工具不支持，请显式列出端口)

initial begin
    $dumpfile("tb_aes_ecb_stress.vcd");
    $dumpvars(0, tb_aes_ip);
end

task reset;
	begin
		PCLK = 0;
		PSEL = 0;
		PENABLE = 0;
		PWDATA = 0;
		PWRITE = 0;
		PADDR = 0;
		PRESETn = 0;
		@(posedge PCLK);
		PRESETn = 1;
	end
endtask

task apb_write;
	input [31:0] addr;
	input [31:0] data_in;
	begin
		PSEL <= 1;
		PWRITE <= 1;
		PENABLE <= 0;
		PADDR <= addr;
		PWDATA <= data_in;
		@(posedge PCLK);
		PENABLE <= 1;
		@(posedge PCLK);
		PSEL <= 0;
		PENABLE <= 0;
	end
endtask

task apb_read;
	input  [31:0] addr;
	output [31:0] data_out;
	begin
		PSEL <= 1;
		PENABLE <= 0;
		PWRITE <= 0;
		PADDR <= addr;
		@(posedge PCLK);
		PENABLE <= 1;
		@(posedge PCLK);
		data_out = PRDATA;
		PENABLE <= 0;
		PSEL <= 0;
	end
endtask

task write_iv;
	input [127:0] iv_in;
	begin
		apb_write(AES_IVR0, iv_in[ 31:0]);
		apb_write(AES_IVR1, iv_in[ 63:32]);
		apb_write(AES_IVR2, iv_in[ 95:64]);
		apb_write(AES_IVR3, iv_in[127:96]);
	end
endtask

task read_iv;
	output [127:0] iv_out;
	begin
		apb_read(AES_IVR0, iv_out[ 31:0]);
		apb_read(AES_IVR1, iv_out[ 63:32]);
		apb_read(AES_IVR2, iv_out[ 95:64]);
		apb_read(AES_IVR3, iv_out[127:96]);
	end
endtask

task write_key;
	input [127:0] key_in;
	begin
		apb_write(AES_KEYR0, key_in[ 31:0]);
		apb_write(AES_KEYR1, key_in[ 63:32]);
		apb_write(AES_KEYR2, key_in[ 95:64]);
		apb_write(AES_KEYR3, key_in[127:96]);
	end
endtask

task read_key;
	output [127:0] key_out;
	begin
		apb_read(AES_KEYR0, key_out[ 31:0]);
		apb_read(AES_KEYR1, key_out[ 63:32]);
		apb_read(AES_KEYR2, key_out[ 95:64]);
		apb_read(AES_KEYR3, key_out[127:96]);
	end
endtask

task write_data;
	input [127:0] data_in;
	begin
		apb_write(AES_DINR, data_in[127:96]);
		apb_write(AES_DINR, data_in[ 95:64]);
		apb_write(AES_DINR, data_in[ 63:32]);
		apb_write(AES_DINR, data_in[ 31: 0]);
	end
endtask

task write_data_dma;
	input [127:0] data_in;
	begin
		@(posedge dma_req_wr);
		apb_write(AES_DINR, data_in[127:96]);
		@(posedge dma_req_wr);
		apb_write(AES_DINR, data_in[ 95:64]);
		@(posedge dma_req_wr);
		apb_write(AES_DINR, data_in[ 63:32]);
		@(posedge dma_req_wr);
		apb_write(AES_DINR, data_in[ 31: 0]);
	end
endtask

task read_data;
	output [127:0] data_rd;
	begin
		apb_read(AES_DOUTR, data_rd[127:96]);
		apb_read(AES_DOUTR, data_rd[ 95:64]);
		apb_read(AES_DOUTR, data_rd[ 63:32]);
		apb_read(AES_DOUTR, data_rd[ 31: 0]);
	end
endtask

task read_data_dma;
	output [127:0] data_rd;
	begin
		@(posedge dma_req_rd);
		apb_read(AES_DOUTR, data_rd[127:96]);
		@(posedge dma_req_rd);
		apb_read(AES_DOUTR, data_rd[ 95:64]);
		@(posedge dma_req_rd);
		apb_read(AES_DOUTR, data_rd[ 63:32]);
		@(posedge dma_req_rd);
		apb_read(AES_DOUTR, data_rd[ 31: 0]);
	end
endtask

task check_result;
	input [127:0] result;
	input [127:0] golden;
	output error;
	begin
		error = 0;
		if(result != golden)
			begin
				$display("TEST FAILED!");
				$display("Expected %x, obtained %x", golden, result);
				error = 1;
			end
	end
endtask

// 时钟生成
always #10 PCLK = !PCLK;

// 同上的 localparam 和端口声明，省略

initial begin
    $dumpfile("tb_aes_cbc_stress.vcd");
    $dumpvars(0, tb_aes_ip);
end

// 所有 task 定义同原始文件

integer i, j, error;
reg [127:0] rand_key, rand_iv;
reg [127:0] data_blocks [0:3];

initial begin
    reset;
    error = 0;
    for (i = 0; i < 50; i = i + 1) begin
        rand_key = {$random, $random, $random, $random};
        rand_iv  = {$random, $random, $random, $random};
        write_key(rand_key);
        write_iv(rand_iv);
        apb_write(AES_CR, CBC | ENABLE | CCFIE);
        for (j = 0; j < 4; j = j + 1) begin
            data_blocks[j] = {$random, $random, $random, $random};
            write_data(data_blocks[j]);
            @(posedge int_ccf);
            read_data(result);
        end
        apb_write(AES_CR, DISABLE);
    end
    $display("CBC stress test completed, %0d groups processed", i);
    #1000;
    $finish;
end

endmodule