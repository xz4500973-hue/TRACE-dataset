`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *) module video_data_average(
    input               i_clk,
    input               i_reset_n,
    // video interface
    input               i_video_hs,
    input               i_video_vs,
    input               i_video_de,
    // rd_RAM_interface
    output      [8:0]   o_ram_rd_en,
    output      [80:0]  o_ram_rd_addr,
    input       [16*9-1:0] i_ram_rd_data,
    input       [11:0]  i_X_cnt,
    input       [11:0]  i_Y_cnt,
    // ave_DATA_interface
    output      [11:0]  o_ave_data,
    output              o_ave_data_en
);

    parameter   IDLE    = 4'b0000,
                PIXEL   = 4'b0001,
                LINE    = 4'b0010,
                DONE    = 4'b0100,
                WAIT    = 4'b1000;

    reg [8:0]   r_rd_X_cnt;
    reg [8:0]   r_rd_Y_cnt;
    reg [11:0]  r_Y_cnt_delay1;
    reg [11:0]  r_Y_cnt_delay2;
    reg [3:0]   c_state;
    reg [3:0]   n_state;
    reg [8:0]   r_ram_rd_en;
    reg [80:0]  r_ram_rd_addr;
    reg [11:0]  r_ave_data1, r_ave_data2;
    reg         r_ave_en;
    reg         r_ave_en_r;

    assign o_ram_rd_addr = r_ram_rd_addr;
    assign o_ram_rd_en   = r_ram_rd_en;

    // r_rd_X_cnt 计数逻辑
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n)
            r_rd_X_cnt <= 0;
        else begin
            if (i_video_hs || i_video_vs)
                r_rd_X_cnt <= 0;
            else if (i_video_de && (i_X_cnt % 4 == 3))
                r_rd_X_cnt <= r_rd_X_cnt + 1;
        end
    end

    // r_rd_Y_cnt 和延迟
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n) begin
            r_rd_Y_cnt    <= 0;
            r_Y_cnt_delay1 <= 0;
            r_Y_cnt_delay2 <= 0;
        end else begin
            r_Y_cnt_delay1 <= i_Y_cnt;
            r_Y_cnt_delay2 <= r_Y_cnt_delay1;
            if (i_video_vs)
                r_rd_Y_cnt <= 0;
            else if (i_Y_cnt % 5 == 4 && (r_Y_cnt_delay1 != r_Y_cnt_delay2))
                r_rd_Y_cnt <= r_rd_Y_cnt + 1;
            else
                r_rd_Y_cnt <= r_rd_Y_cnt;
        end
    end

    // 状态机寄存器
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n)
            c_state <= IDLE;
        else
            c_state <= n_state;
    end

    // 下一状态组合逻辑
    always @(*) begin
        // if-else style (was case)
            if(c_state==IDLE) begin
                if (r_rd_Y_cnt % 9 == 0 && r_rd_X_cnt == 9'd480 && r_rd_Y_cnt != 0 && i_Y_cnt % 45 == 0)
                    n_state = PIXEL;
                else
                    n_state = IDLE;
            end
            else if(c_state==PIXEL) begin
                if (r_rd_X_cnt == 9'd479 && i_X_cnt == 12'd1919)
                    n_state = LINE;
                else
                    n_state = PIXEL;
            end
            else if(c_state==LINE) begin
                if (r_rd_Y_cnt % 9 == 0 && r_rd_Y_cnt != 0 && r_rd_X_cnt == 9'd480 && i_Y_cnt % 45 == 0)
                    n_state = PIXEL;
                else
                    n_state = WAIT;
            end
            else if(c_state==WAIT) begin
                if (r_rd_Y_cnt == 9'd432 && i_Y_cnt == 12'd2159 && i_video_de == 0)
                    n_state = DONE;
                else if (r_rd_Y_cnt == 9'd432 && i_Y_cnt == 12'd2159)
                    n_state = PIXEL;
                else
                    n_state = LINE;
            end
            else if(c_state==DONE) begin
                if (i_video_vs)
                    n_state = IDLE;
                else
                    n_state = DONE;
            end
            else n_state = IDLE;
    end

    // RAM 读地址和使能控制
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n) begin
            r_ram_rd_addr <= 0;
            r_ram_rd_en   <= 0;
        end else begin
            // if-else ram control (was case)
                if(c_state==IDLE) begin
                    r_ram_rd_en   <= 0;
                    r_ram_rd_addr <= 0;
                end
                else if(c_state==PIXEL) begin
                    // 修正: 条件永远为真? 原意可能是 <= 4
                    if (r_rd_X_cnt % 5 == 4) begin   // 修正 <=<= 为 <=
                        r_ram_rd_en <= 9'b1_1111_1111;
                        // 注意: 减法可能下溢，建议添加饱和保护或确保逻辑正确
                        r_ram_rd_addr[8:0]   <= r_rd_X_cnt - 9'd2;
                        r_ram_rd_addr[17:9]  <= r_rd_X_cnt - 9'd3;
                        r_ram_rd_addr[26:18] <= r_rd_X_cnt - 9'd1;
                        r_ram_rd_addr[35:27] <= r_rd_X_cnt - 9'd4;
                        r_ram_rd_addr[44:36] <= r_rd_X_cnt - 9'd2;
                        r_ram_rd_addr[53:45] <= r_rd_X_cnt - 9'd0;
                        r_ram_rd_addr[62:54] <= r_rd_X_cnt - 9'd3;
                        r_ram_rd_addr[71:63] <= r_rd_X_cnt - 9'd1;
                        r_ram_rd_addr[80:72] <= r_rd_X_cnt - 9'd2;
                    end else begin
                        r_ram_rd_en <= 0;
                    end
                end
                else  r_ram_rd_en <= 0;

        end
    end

    // 生成 9 个数据临时和（注意位宽匹配）
    generate
        genvar i;
        wire [7:0] data_temp [8:0];   // 每个加法结果 8 位
        for (i = 0; i < 9; i = i + 1) begin : add_gen   // 修改块名，避免与状态 LINE 冲突
            assign data_temp[i] = i_ram_rd_data[16*i + 15 -: 8] + i_ram_rd_data[16*i + 7 -: 8];
            // 原写法索引有误，修正为: 高8位 + 低8位
        end
    endgenerate

    // 累加
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n) begin
            r_ave_data1 <= 0;
            r_ave_data2 <= 0;
        end else begin
            r_ave_data1 <= {4'b0, data_temp[0]} + {4'b0, data_temp[1]} + {4'b0, data_temp[2]} 
                         + {4'b0, data_temp[3]} + {4'b0, data_temp[4]};
            r_ave_data2 <= {4'b0, data_temp[5]} + {4'b0, data_temp[6]} + {4'b0, data_temp[7]} 
                         + {4'b0, data_temp[8]};
        end
    end

    // 平均值输出 (总和除以4，实际是取高位)
    assign o_ave_data = r_ave_data1[11:2] + r_ave_data2[11:2];

    // 输出使能
    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n)
            r_ave_en <= 0;
        else if (r_ram_rd_en == 9'b1_1111_1111)
            r_ave_en <= 1;
        else
            r_ave_en <= 0;
    end

    always @(posedge i_clk or negedge i_reset_n) begin
        if (!i_reset_n)
            r_ave_en_r <= 0;
        else
            r_ave_en_r <= r_ave_en;
    end

    assign o_ave_data_en = r_ave_en_r;

endmodule