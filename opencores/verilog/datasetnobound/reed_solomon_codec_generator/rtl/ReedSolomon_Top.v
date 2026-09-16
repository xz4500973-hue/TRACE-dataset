// ReedSolomon_Top.v – 合并编码器和解码器的顶层
(* keep_hierarchy = "yes" *) module ReedSolomon_Top (
    input           CLK,
    input           RESET,

    // ---- 编码器接口 ----
    input           enc_enable,
    input           enc_startPls,
    input  [7:0]    enc_dataIn,
    output [7:0]    enc_dataOut,

    // ---- 解码器接口 ----
    input           dec_enable,
    input           dec_sync,
    input           dec_erasureIn,
    input  [7:0]    dec_dataIn,
    output          dec_outStartPls,
    output          dec_outDone,
    output [7:0]    dec_outData,
    output [7:0]    dec_errorNum,
    output [7:0]    dec_erasureNum,
    output          dec_fail,
    output          dec_outEnable,
    output [7:0]    dec_delayedData
);

    // 编码器例化
    RsEncodeTop u_encoder (
        .CLK      (CLK),
        .RESET    (RESET),
        .enable   (enc_enable),
        .startPls (enc_startPls),
        .dataIn   (enc_dataIn),
        .dataOut  (enc_dataOut)
    );

    // 解码器例化
    RsDecodeTop u_decoder (
        .CLK          (CLK),
        .RESET        (RESET),
        .enable       (dec_enable),
        .startPls     (dec_sync),
        .erasureIn    (dec_erasureIn),
        .dataIn       (dec_dataIn),
        .outEnable    (dec_outEnable),
        .outStartPls  (dec_outStartPls),
        .outDone      (dec_outDone),
        .errorNum     (dec_errorNum),
        .erasureNum   (dec_erasureNum),
        .fail         (dec_fail),
        .delayedData  (dec_delayedData),
        .outData      (dec_outData)
    );

endmodule