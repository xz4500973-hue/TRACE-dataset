/*
 * Milkymist VJ SoC - tmu_decay (alternative style)
 * Functionally identical to original, but with explicit pipeline stages.
 */
(* keep_hierarchy = "yes" *) module tmu_decay #( parameter fml_depth = 26 ) (
    input               sys_clk,
    input               sys_rst,
    output              busy,
    input        [5:0]  brightness,
    input               pipe_stb_i,
    output              pipe_ack_o,
    input       [15:0]  src_pixel,
    input [fml_depth-1-1:0] dst_addr,
    output              pipe_stb_o,
    input               pipe_ack_i,
    output      [15:0]  src_pixel_d,
    output reg [fml_depth-1-1:0] dst_addr1
);

    // -------- Stage 0 (input) ----------
    wire s0_valid = pipe_stb_i;
    wire s0_en     = pipe_ack_i;

    // -------- Stage 1 registers ----------
    reg  s1_valid;
    reg  [fml_depth-1-1:0] s1_dst;
    reg  [15:0] s1_px;
    reg  [5:0]  s1_b;
    reg  [4:0]  s1_r;
    reg  [5:0]  s1_g;
    reg  [4:0]  s1_bb;
    reg  s1_fb;

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            s1_valid <= 1'b0;
        end else if (s0_en) begin
            s1_valid <= s0_valid;
            s1_dst   <= dst_addr;
            s1_px    <= src_pixel;
            s1_b     <= brightness + 6'd1;
            s1_r     <= src_pixel[15:11];
            s1_g     <= src_pixel[10:5];
            s1_bb    <= src_pixel[4:0];
            s1_fb    <= (brightness == 6'b111111);
        end
    end

    // -------- Stage 2 registers ----------
    reg  s2_valid;
    reg  [fml_depth-1-1:0] s2_dst;
    reg  [15:0] s2_px;
    reg  s2_fb;
    reg  [10:0] s2_r;   // 6*5 = 30, need 11 bits? original uses 11 bits
    reg  [11:0] s2_g;   // 6*6 = 36, need 12 bits
    reg  [10:0] s2_b;

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            s2_valid <= 1'b0;
        end else if (s0_en) begin
            s2_valid <= s1_valid;
            s2_dst   <= s1_dst;
            s2_px    <= s1_px;
            s2_fb    <= s1_fb;
            s2_r     <= s1_b * s1_r;
            s2_g     <= s1_b * s1_g;
            s2_b     <= s1_b * s1_bb;
        end
    end

    // -------- Stage 3 registers ----------
    reg  s3_valid;
    reg  [15:0] s3_px;
    reg  s3_fb;
    reg  [10:0] s3_r;
    reg  [11:0] s3_g;
    reg  [10:0] s3_b;

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            s3_valid <= 1'b0;
        end else if (s0_en) begin
            s3_valid <= s2_valid;
            s3_px    <= s2_px;
            s3_fb    <= s2_fb;
            s3_r     <= s2_r;
            s3_g     <= s2_g;
            s3_b     <= s2_b;
        end
    end

    // -------- Output combinational logic ----------
    assign src_pixel_d = s3_fb ? s3_px : { s3_r[10:6], s3_g[11:6], s3_b[10:6] };
    assign pipe_stb_o = s3_valid;
    assign pipe_ack_o = pipe_ack_i;
    assign busy = s1_valid | s2_valid | s3_valid;

    // Destination address output (registered at stage 2, but original uses s2_dst? Wait, original uses s2_dst -> dst_addr1)
    // In original, dst_addr1 is assigned from s2_dst inside always block.
    always @(posedge sys_clk) begin
        if (sys_rst) begin
            dst_addr1 <= 0;
        end else if (s0_en) begin
            dst_addr1 <= s2_dst;
        end
    end

endmodule