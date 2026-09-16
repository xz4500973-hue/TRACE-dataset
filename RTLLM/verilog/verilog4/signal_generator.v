`timescale 1ns/1ps

module signal_generator(
    input clk, rst_n,
    output [4:0] wave
);

    reg [4:0] count;
    reg       direction;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count     <= 0;
            direction <= 1'b0;
        end else begin
            if (direction) begin
                count <= count - 1'b1;
                if (count == 1) direction <= 1'b0;
            end else begin
                count <= count + 1'b1;
                if (count == 30) direction <= 1'b1;
            end
        end
    end

    assign wave = count;

endmodule