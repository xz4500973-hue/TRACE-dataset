`timescale 1ns/1ps

module synchronizer(
    input              clk_a, clk_b, arstn, brstn,
    input  [3:0]       data_in,
    input              data_en,
    output reg [3:0]   dataout
);

    // Handshake protocol: req/ack between domains
    reg [3:0] data_a;
    reg       req, ack_s1, ack_s2, ack_a;

    // clk_a: capture data, raise req
    always @(posedge clk_a or negedge arstn) begin
        if (!arstn) begin
            data_a <= 0; req <= 0;
        end else begin
            if (data_en && !req) begin
                data_a <= data_in;
                req    <= 1;
            end
            ack_s1 <= ack_a;
            ack_s2 <= ack_s1;
            if (ack_s2) req <= 0;
        end
    end

    // clk_b: detect req, latch data, raise ack
    reg req_s1, req_s2;
    always @(posedge clk_b or negedge brstn) begin
        if (!brstn) begin
            req_s1 <= 0; req_s2 <= 0; ack_a <= 0; dataout <= 0;
        end else begin
            req_s1 <= req;
            req_s2 <= req_s1;
            if (req_s2) begin
                dataout <= data_a;
                ack_a   <= 1;
            end else begin
                ack_a <= 0;
            end
        end
    end

endmodule