(* keep_hierarchy = "yes" *) module asfifo (
    output reg [8:0] data_out,   // 根据 {eof,data} 宽度推断
    output wire empty,
    input  read_en,
    input  clk_read,
    input  [8:0] data_in,        // 宽度与 data_out 一致
    output wire full,
    input  write_en,
    input  clk_write,
    input  rst
);
    // 简单的寄存器实现，仅用于仿真（忽略真正的 FIFO 行为）
    reg [8:0] mem [0:255];
    reg [7:0] wr_ptr, rd_ptr;
    always @(posedge clk_write or posedge rst) begin
        if (rst) wr_ptr <= 0;
        else if (write_en && !full) mem[wr_ptr] <= data_in; wr_ptr <= wr_ptr + 1;
    end
    always @(posedge clk_read or posedge rst) begin
        if (rst) rd_ptr <= 0;
        else if (read_en && !empty) data_out <= mem[rd_ptr]; rd_ptr <= rd_ptr + 1;
    end
    assign empty = 0;
    assign full  = 0;
endmodule