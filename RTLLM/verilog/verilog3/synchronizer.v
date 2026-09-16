`timescale 1ns/1ps

module synchronizer(
    input              clk_a, clk_b, arstn, brstn,
    input  [3:0]       data_in,
    input              data_en,
    output reg [3:0]   dataout
);

    // Combine data+enable into 5-bit bus, sync the bus
    reg [4:0] bus_s1, bus_s2;
    wire [4:0] bus_a;

    assign bus_a = {data_en, data_in};


    // 2-stage sync in clk_b domain
    always @(posedge clk_b or negedge brstn) begin
        if (!brstn) begin
            bus_s1 <= 0; bus_s2 <= 0; dataout <= 0;
        end else begin
            bus_s1 <= bus_a;
            bus_s2 <= bus_s1;
            if (bus_s2[4]) dataout <= bus_s2[3:0];
        end
    end

endmodule