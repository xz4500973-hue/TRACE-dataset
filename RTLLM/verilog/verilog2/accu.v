`timescale 1ns/1ps

module accu(
    input               clk         ,   
    input               rst_n       ,
    input       [7:0]   data_in     ,
    input               valid_in    ,
  
    output  reg         valid_out    ,
    output  reg [9:0]   data_out
);

    // FSM one-hot state encoding
    localparam IDLE = 5'b00001;
    localparam S1   = 5'b00010;
    localparam S2   = 5'b00100;
    localparam S3   = 5'b01000;
    localparam DONE = 5'b10000;

    reg [4:0] state, next_state;
    reg [9:0] sum_reg;

    // state transition
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= IDLE;
        else
            state <= next_state;
    end

    // next state logic
    always @(*) begin
        next_state = state;
        case (state)
            IDLE: if (valid_in)                     next_state = S1;
            S1:   if (valid_in)                     next_state = S2;
                  else if (!valid_in)               next_state = IDLE;
            S2:   if (valid_in)                     next_state = S3;
                  else if (!valid_in)               next_state = IDLE;
            S3:   if (valid_in)                     next_state = DONE;
                  else if (!valid_in)               next_state = IDLE;
            DONE:                                   next_state = IDLE;
            default:                                next_state = IDLE;
        endcase
    end

    // accumulation and output
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum_reg   <= 10'd0;
            data_out  <= 10'd0;
            valid_out <= 1'b0;
        end
        else begin
            // default valid_out low
            valid_out <= 1'b0;

            case (state)
                IDLE: begin
                    if (valid_in) begin
                        sum_reg  <= data_in;
                        data_out <= data_in;
                    end
                end
                S1: begin
                    if (valid_in) begin
                        sum_reg  <= sum_reg + data_in;
                        data_out <= sum_reg + data_in;
                    end
                end
                S2: begin
                    if (valid_in) begin
                        sum_reg  <= sum_reg + data_in;
                        data_out <= sum_reg + data_in;
                    end
                end
                S3: begin
                    if (valid_in) begin
                        sum_reg  <= sum_reg + data_in;
                        data_out <= sum_reg + data_in;
                        valid_out <= 1'b1;
                    end
                end
                DONE: begin
                    sum_reg  <= 10'd0;
                    data_out <= data_out;
                end
                default: begin
                    sum_reg  <= 10'd0;
                    data_out <= data_out;
                end
            endcase
        end
    end

endmodule