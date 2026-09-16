`timescale 1ns/1ps

module multi_16bit(
    input clk, rst_n, start,
    input [15:0] ain, bin,
    output [31:0] yout,
    output done
);

    // FSM-based sequential multiplier
    localparam IDLE = 4'd0;
    localparam S1   = 4'd1;
    localparam S2   = 4'd2;
    localparam S3   = 4'd3;
    localparam S4   = 4'd4;
    localparam S5   = 4'd5;
    localparam S6   = 4'd6;
    localparam S7   = 4'd7;
    localparam S8   = 4'd8;
    localparam S9   = 4'd9;
    localparam S10  = 4'd10;
    localparam S11  = 4'd11;
    localparam S12  = 4'd12;
    localparam S13  = 4'd13;
    localparam S14  = 4'd14;
    localparam S15  = 4'd15;
    localparam DONE = 4'd16;

    reg [3:0] state;
    reg [15:0] areg, breg;
    reg [31:0] yout_r;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            areg <= 0; breg <= 0; yout_r <= 0;
        end else begin
            case (state)
                IDLE: if (start) begin
                    areg <= ain; breg <= bin; yout_r <= 0;
                    state <= S1;
                end
                S1:  begin if (areg[0])  yout_r <= yout_r + breg; state <= S2;  end
                S2:  begin if (areg[1])  yout_r <= yout_r + {breg, 1'b0}; state <= S3;  end
                S3:  begin if (areg[2])  yout_r <= yout_r + {breg, 2'b0}; state <= S4;  end
                S4:  begin if (areg[3])  yout_r <= yout_r + {breg, 3'b0}; state <= S5;  end
                S5:  begin if (areg[4])  yout_r <= yout_r + {breg, 4'b0}; state <= S6;  end
                S6:  begin if (areg[5])  yout_r <= yout_r + {breg, 5'b0}; state <= S7;  end
                S7:  begin if (areg[6])  yout_r <= yout_r + {breg, 6'b0}; state <= S8;  end
                S8:  begin if (areg[7])  yout_r <= yout_r + {breg, 7'b0}; state <= S9;  end
                S9:  begin if (areg[8])  yout_r <= yout_r + {breg, 8'b0}; state <= S10; end
                S10: begin if (areg[9])  yout_r <= yout_r + {breg, 9'b0}; state <= S11; end
                S11: begin if (areg[10]) yout_r <= yout_r + {breg, 10'b0}; state <= S12; end
                S12: begin if (areg[11]) yout_r <= yout_r + {breg, 11'b0}; state <= S13; end
                S13: begin if (areg[12]) yout_r <= yout_r + {breg, 12'b0}; state <= S14; end
                S14: begin if (areg[13]) yout_r <= yout_r + {breg, 13'b0}; state <= S15; end
                S15: begin if (areg[14]) yout_r <= yout_r + {breg, 14'b0}; state <= DONE;end
                DONE: state <= IDLE;
            endcase
        end
    end

    assign yout = yout_r;
    assign done = (state == DONE);

endmodule