`timescale 1ns/1ps

module signal_generator(
    input clk, rst_n,
    output [4:0] wave
);

    reg [4:0] counter;
    reg       up;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            up      <= 1;
        end else begin
            counter <= up ? counter + 1 : counter - 1;
            if (counter == 30 && up) up <= 0;
            if (counter == 1 && !up) up <= 1;
        end
    end

    assign wave = counter;

endmodule