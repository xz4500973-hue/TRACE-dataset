(* keep_hierarchy = "yes" *) module asfifo #(
    parameter data_width    = 2,
    parameter address_width = 6
) (
    output      [data_width-1:0] data_out,
    output                       empty,
    input                        read_en,
    input                        clk_read,
    input        [data_width-1:0] data_in,
    output                       full,
    input                        write_en,
    input                        clk_write,
    input                        rst
);

    localparam depth = 1 << address_width;
    reg [data_width-1:0] mem [0:depth-1];
    reg [address_width-1:0] wr_ptr, rd_ptr;

    // 写指针
    always @(posedge clk_write or posedge rst) begin
        if (rst) wr_ptr <= 0;
        else if (write_en && !full) begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
        end
    end
    reg [data_width-1:0] data_out_reg;
    // 读指针和输出数据
    always @(posedge clk_read or posedge rst) begin
        if (rst) begin
            rd_ptr <= 0;
            data_out_reg <= 0;
        end else if (read_en && !empty) begin
            data_out_reg <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
    end

    assign data_out = data_out_reg;

    // 计数：当前 FIFO 中的数据个数（组合逻辑，仿真用）
    wire [address_width:0] wr_ptr_ext = {1'b0, wr_ptr};
    wire [address_width:0] rd_ptr_ext = {1'b0, rd_ptr};
    wire [address_width:0] count = wr_ptr_ext - rd_ptr_ext;

    assign full  = (count == depth);
    assign empty = (count == 0);

endmodule