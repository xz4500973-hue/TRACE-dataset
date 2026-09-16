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
    wire ready_add;
    wire end_cnt;

    assign ready_add = !valid_out | valid_in;
    assign end_cnt   = ready_add && (count == 2'd3);

    // single always block for all sequential logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count     <= 2'd0;
            data_out  <= 10'd0;
            valid_out <= 1'b0;
        end
        else begin
            // default valid_out low
            valid_out <= 1'b0;

            if (end_cnt) begin
                count     <= 2'd0;
                valid_out <= 1'b1;
                data_out  <= data_out + data_in;
            end
            else if (ready_add) begin
                count <= count + 2'd1;

                if (count == 2'd0)
                    data_out <= data_in;
                else
                    data_out <= data_out + data_in;
            end
        end
    end

endmodule