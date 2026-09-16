`timescale 1ns/1ps

module accu(
    input               clk         ,   
    input               rst_n       ,
    input       [7:0]   data_in     ,
    input               valid_in    ,
  
    output  reg         valid_out    ,
    output  reg [9:0]   data_out
);

    reg [1:0] count;
    reg [7:0] val0, val1, val2;        // store first 3 inputs
    wire ready_add;
    wire end_cnt;

    assign ready_add = !valid_out | valid_in;
    assign end_cnt   = ready_add && (count == 2'd3);

    // count control
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 2'd0;
        else if (end_cnt)
            count <= 2'd0;
        else if (ready_add)
            count <= count + 2'd1;
    end

    // capture first 3 inputs into explicit registers
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            val0 <= 8'd0;
            val1 <= 8'd0;
            val2 <= 8'd0;
        end
        else if (ready_add) begin
            if (count == 2'd0)      val0 <= data_in;
            else if (count == 2'd1) val1 <= data_in;
            else if (count == 2'd2) val2 <= data_in;
        end
    end

    // tree adder: (val0 + val1) + (val2 + data_in_of_count3)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out  <= 10'd0;
            valid_out <= 1'b0;
        end
        else begin
            valid_out <= 1'b0;
            if (end_cnt) begin
                valid_out <= 1'b1;
                // 4th input is current data_in, tree-add all 4
                data_out  <= (val0 + val1) + (val2 + data_in);
            end
            else if (ready_add) begin
                if (count == 2'd0)
                    data_out <= data_in;                  // d1
                else if (count == 2'd1)
                    data_out <= val0 + data_in;           // d1 + d2
                else if (count == 2'd2)
                    data_out <= val0 + val1 + data_in;    // d1 + d2 + d3
            end
        end
    end

endmodule