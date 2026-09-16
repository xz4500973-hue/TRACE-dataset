`timescale 1ns/1ps

module accu #(
    parameter STAGES = 4,
    parameter DWIDTH = 8,
    parameter AWIDTH = 10
)(
    input                       CLK         ,   
    input                       RST_N       ,
    input       [DWIDTH-1:0]    DATA_IN     ,
    input                       VALID_IN    ,
  
    output  reg                 VALID_OUT    ,
    output  reg [AWIDTH-1:0]    DATA_OUT
);

    reg [$clog2(STAGES)-1:0] cnt;
    wire ready;
    wire done;

    assign ready = !VALID_OUT | VALID_IN;
    assign done  = ready && (cnt == (STAGES-1));

    // counter with parameterized width
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            cnt <= 0;
        else if (done)
            cnt <= 0;
        else if (ready)
            cnt <= cnt + 1'b1;
    end

    // accumulation using generate loop (unrolled adder chain)
    reg [AWIDTH-1:0] accum;

    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            accum     <= 0;
            DATA_OUT  <= 0;
            VALID_OUT <= 1'b0;
        end
        else begin
            VALID_OUT <= 1'b0;

            if (done) begin
                VALID_OUT <= 1'b1;
                DATA_OUT  <= accum + DATA_IN;
                accum     <= 0;
            end
            else if (ready) begin
                if (cnt == 0) begin
                    accum    <= DATA_IN;
                    DATA_OUT <= DATA_IN;
                end
                else begin
                    accum    <= accum + DATA_IN;
                    DATA_OUT <= accum + DATA_IN;
                end
            end
        end
    end

endmodule