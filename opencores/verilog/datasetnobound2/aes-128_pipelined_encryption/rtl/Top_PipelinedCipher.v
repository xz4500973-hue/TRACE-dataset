/*
Project        : AES
Standard doc.  : FIPS 197
Module name    : Top_AES_PipelinedCipher 
VARIANT: Manual round instantiation instead of generate loop
Owner          : Amr Salah
*/

`timescale 1 ns/1 ps

(* keep_hierarchy = "yes" *) module Top_PipelinedCipher
#
(
parameter DATA_W = 128,
parameter KEY_L = 128,
parameter NO_ROUNDS = 10
)
(
input clk,
input reset,
input data_valid_in,
input cipherkey_valid_in,
input [KEY_L-1:0] cipher_key,
input [DATA_W-1:0] plain_text,
output valid_out,
output [DATA_W-1:0] cipher_text
);

wire [NO_ROUNDS-1:0] valid_round_key;
wire [NO_ROUNDS-1:0] valid_round_data;
wire [DATA_W-1:0] data_round [0:NO_ROUNDS-1];
wire valid_sub2shift;
wire valid_shift2key;
wire [DATA_W-1:0]data_sub2shift;
wire [DATA_W-1:0]data_shift2key;
wire [(NO_ROUNDS*DATA_W)-1:0] W;

reg[DATA_W-1:0] data_shift2key_delayed;
reg valid_shift2key_delayed;

KeyExpantion #(DATA_W,KEY_L,NO_ROUNDS) U_KEYEXP(clk,reset,cipherkey_valid_in,cipher_key,W,valid_round_key);

AddRoundKey #(DATA_W)U0_ARK(clk,reset,data_valid_in,cipherkey_valid_in,plain_text,cipher_key,valid_round_data[0],data_round[0]);

// Manual unrolling of rounds 0..8
Round #(DATA_W)U_ROUND_0(clk,reset,valid_round_data[0],valid_round_key[0],data_round[0],W[10*DATA_W-1:9*DATA_W],valid_round_data[1],data_round[1]);
Round #(DATA_W)U_ROUND_1(clk,reset,valid_round_data[1],valid_round_key[1],data_round[1],W[9*DATA_W-1:8*DATA_W],valid_round_data[2],data_round[2]);
Round #(DATA_W)U_ROUND_2(clk,reset,valid_round_data[2],valid_round_key[2],data_round[2],W[8*DATA_W-1:7*DATA_W],valid_round_data[3],data_round[3]);
Round #(DATA_W)U_ROUND_3(clk,reset,valid_round_data[3],valid_round_key[3],data_round[3],W[7*DATA_W-1:6*DATA_W],valid_round_data[4],data_round[4]);
Round #(DATA_W)U_ROUND_4(clk,reset,valid_round_data[4],valid_round_key[4],data_round[4],W[6*DATA_W-1:5*DATA_W],valid_round_data[5],data_round[5]);
Round #(DATA_W)U_ROUND_5(clk,reset,valid_round_data[5],valid_round_key[5],data_round[5],W[5*DATA_W-1:4*DATA_W],valid_round_data[6],data_round[6]);
Round #(DATA_W)U_ROUND_6(clk,reset,valid_round_data[6],valid_round_key[6],data_round[6],W[4*DATA_W-1:3*DATA_W],valid_round_data[7],data_round[7]);
Round #(DATA_W)U_ROUND_7(clk,reset,valid_round_data[7],valid_round_key[7],data_round[7],W[3*DATA_W-1:2*DATA_W],valid_round_data[8],data_round[8]);
Round #(DATA_W)U_ROUND_8(clk,reset,valid_round_data[8],valid_round_key[8],data_round[8],W[2*DATA_W-1:1*DATA_W],valid_round_data[9],data_round[9]);

SubBytes #(DATA_W) U_SUB (clk,reset,valid_round_data[NO_ROUNDS-1],data_round[NO_ROUNDS-1],valid_sub2shift,data_sub2shift);
ShiftRows #(DATA_W) U_SH (clk,reset,valid_sub2shift,data_sub2shift,valid_shift2key,data_shift2key);
AddRoundKey #(DATA_W) U_KEY (clk,reset,valid_shift2key_delayed,valid_round_key[NO_ROUNDS-1],data_shift2key_delayed,W[DATA_W-1:0],valid_out,cipher_text);

always @(posedge clk or negedge reset)
if(!reset)begin
    valid_shift2key_delayed <= 1'b0;
    data_shift2key_delayed <= 'b0;
end else begin
 if(valid_shift2key)begin
   data_shift2key_delayed <= data_shift2key;
 end
   valid_shift2key_delayed <= valid_shift2key;
end

endmodule