// lfsr_polynom.v - 可综合版本
// 根据 LFSR 长度选择相应的反馈多项式
// 原代码中的 `switch`/`case`/`let` 已被标准 Verilog 替换

(* keep_hierarchy = "yes" *) module lfsr_polynom #(
    parameter LFSR_LENGTH = 8   // 长度范围：2 至 32
) (
    input  [32:1] qi,           // LFSR 当前状态，下标 1 为 LSB，32 为 MSB（实际有效位由 LFSR_LENGTH 决定）
    output       LFSR_FB,       // 正向反馈（用于正常移位）
    output       LFSR_FB_REW    // 反向反馈（用于逆向移位）
);

    reg fb, fb_rew;
    assign LFSR_FB = fb;
    assign LFSR_FB_REW = fb_rew;

    always @(*) begin
        case (LFSR_LENGTH)
            2: begin
                fb     = qi[2] ^ qi[1];
                fb_rew = qi[1] ^ qi[2];
            end
            3: begin
                fb     = qi[3] ^ qi[2];
                fb_rew = qi[1] ^ qi[3];
            end
            4: begin
                fb     = qi[4] ^ qi[3];
                fb_rew = qi[1] ^ qi[4];
            end
            5: begin
                fb     = qi[5] ^ qi[3];
                fb_rew = qi[1] ^ qi[4];
            end
            6: begin
                fb     = qi[6] ^ qi[5];
                fb_rew = qi[1] ^ qi[6];
            end
            7: begin
                fb     = qi[7] ^ qi[6];
                fb_rew = qi[1] ^ qi[7];
            end
            8: begin
                fb     = qi[8] ^ qi[6] ^ qi[5] ^ qi[4];
                fb_rew = qi[1] ^ qi[7] ^ qi[6] ^ qi[5];
            end
            9: begin
                fb     = qi[9] ^ qi[5];
                fb_rew = qi[1] ^ qi[6];
            end
            10: begin
                fb     = qi[10] ^ qi[7];
                fb_rew = qi[1] ^ qi[8];
            end
            11: begin
                fb     = qi[11] ^ qi[9];
                fb_rew = qi[1] ^ qi[10];
            end
            12: begin
                fb     = qi[12] ^ qi[6] ^ qi[4] ^ qi[1];
                fb_rew = qi[1] ^ qi[7] ^ qi[5] ^ qi[2];
            end
            13: begin
                fb     = qi[13] ^ qi[4] ^ qi[3] ^ qi[1];
                fb_rew = qi[1] ^ qi[5] ^ qi[4] ^ qi[2];
            end
            14: begin
                fb     = qi[14] ^ qi[5] ^ qi[3] ^ qi[1];
                fb_rew = qi[1] ^ qi[6] ^ qi[4] ^ qi[2];
            end
            15: begin
                fb     = qi[15] ^ qi[14];
                fb_rew = qi[1] ^ qi[15];
            end
            16: begin
                fb     = qi[16] ^ qi[15] ^ qi[13] ^ qi[4];
                fb_rew = qi[1] ^ qi[16] ^ qi[14] ^ qi[5];
            end
            17: begin
                fb     = qi[17] ^ qi[14];
                fb_rew = qi[1] ^ qi[15];
            end
            18: begin
                fb     = qi[18] ^ qi[11];
                fb_rew = qi[1] ^ qi[12];
            end
            19: begin
                fb     = qi[19] ^ qi[6] ^ qi[2] ^ qi[1];
                fb_rew = qi[1] ^ qi[7] ^ qi[3] ^ qi[2];
            end
            20: begin
                fb     = qi[20] ^ qi[17];
                fb_rew = qi[1] ^ qi[18];
            end
            21: begin
                fb     = qi[21] ^ qi[19];
                fb_rew = qi[1] ^ qi[20];
            end
            22: begin
                fb     = qi[22] ^ qi[21];
                fb_rew = qi[1] ^ qi[22];
            end
            23: begin
                fb     = qi[23] ^ qi[18];
                fb_rew = qi[1] ^ qi[19];
            end
            24: begin
                fb     = qi[24] ^ qi[23] ^ qi[22] ^ qi[17];
                fb_rew = qi[1] ^ qi[24] ^ qi[23] ^ qi[18];
            end
            25: begin
                fb     = qi[25] ^ qi[22];
                fb_rew = qi[1] ^ qi[23];
            end
            26: begin
                fb     = qi[26] ^ qi[6] ^ qi[2] ^ qi[1];
                fb_rew = qi[1] ^ qi[7] ^ qi[3] ^ qi[2];
            end
            27: begin
                fb     = qi[27] ^ qi[5] ^ qi[2] ^ qi[1];
                fb_rew = qi[1] ^ qi[6] ^ qi[3] ^ qi[2];
            end
            28: begin
                fb     = qi[28] ^ qi[25];
                fb_rew = qi[1] ^ qi[26];
            end
            29: begin
                fb     = qi[29] ^ qi[27];
                fb_rew = qi[1] ^ qi[28];
            end
            30: begin
                fb     = qi[30] ^ qi[6] ^ qi[4] ^ qi[1];
                fb_rew = qi[1] ^ qi[7] ^ qi[5] ^ qi[2];
            end
            31: begin
                fb     = qi[31] ^ qi[28];
                fb_rew = qi[1] ^ qi[29];
            end
            32: begin
                fb     = qi[32] ^ qi[22] ^ qi[2] ^ qi[1];
                fb_rew = qi[1] ^ qi[23] ^ qi[3] ^ qi[2];
            end
            default: begin
                fb     = 1'b0;
                fb_rew = 1'b0;
            end
        endcase
    end

endmodule