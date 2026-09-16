`timescale 1ns/1ps

module float_multi(clk, rst, a, b, z);
    input clk, rst;
    input [31:0] a, b;
    output reg [31:0] z;

    // One-hot FSM states
    localparam IDLE       = 8'b00000001;
    localparam UNPACK     = 8'b00000010;
    localparam SPECIAL    = 8'b00000100;
    localparam NORMALIZE1 = 8'b00001000;
    localparam MULTIPLY   = 8'b00010000;
    localparam NORMALIZE2 = 8'b00100000;
    localparam ROUND      = 8'b01000000;
    localparam PACK       = 8'b10000000;

    reg [7:0] state;
    reg [23:0] a_mantissa, b_mantissa, z_mantissa;
    reg [9:0] a_exponent, b_exponent, z_exponent;
    reg a_sign, b_sign, z_sign;
    reg [49:0] product;
    reg guard_bit, round_bit, sticky;

    always @(posedge clk or posedge rst) begin
        if(rst) state <= IDLE;
        else begin
            case(state)
                IDLE:       state <= UNPACK;
                UNPACK:     state <= SPECIAL;
                SPECIAL:    state <= NORMALIZE1;
                NORMALIZE1: state <= MULTIPLY;
                MULTIPLY:   state <= NORMALIZE2;
                NORMALIZE2: state <= ROUND;
                ROUND:      state <= PACK;
                PACK:       state <= IDLE;
                default:    state <= IDLE;
            endcase
        end
    end

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            a_mantissa<=0; b_mantissa<=0; z_mantissa<=0;
            a_exponent<=0; b_exponent<=0; z_exponent<=0;
            a_sign<=0; b_sign<=0; z_sign<=0; z<=0;
            product<=0; guard_bit<=0; round_bit<=0; sticky<=0;
        end else begin
            case(state)
                UNPACK: begin
                    a_mantissa<=a[22:0]; b_mantissa<=b[22:0];
                    a_exponent<=a[30:23]-127; b_exponent<=b[30:23]-127;
                    a_sign<=a[31]; b_sign<=b[31];
                end
                SPECIAL: begin
                    if((a_exponent==128&&a_mantissa!=0)||(b_exponent==128&&b_mantissa!=0)) begin
                        z<={1'b1,8'hFF,1'b1,22'd0};
                    end else if(a_exponent==128) begin
                        z<={a_sign^b_sign,8'hFF,23'd0};
                    end else if(b_exponent==128) begin
                        z<={a_sign^b_sign,8'hFF,23'd0};
                    end else if(($signed(a_exponent)==-127)&&(a_mantissa==0)) begin
                        z<={a_sign^b_sign,31'd0};
                    end else if(($signed(b_exponent)==-127)&&(b_mantissa==0)) begin
                        z<={a_sign^b_sign,31'd0};
                    end else begin
                        if($signed(a_exponent)==-127) a_exponent<=-126; else a_mantissa[23]<=1;
                        if($signed(b_exponent)==-127) b_exponent<=-126; else b_mantissa[23]<=1;
                    end
                end
                NORMALIZE1: begin
                    if(~a_mantissa[23]) begin a_mantissa<=a_mantissa<<1; a_exponent<=a_exponent-1; end
                    if(~b_mantissa[23]) begin b_mantissa<=b_mantissa<<1; b_exponent<=b_exponent-1; end
                end
                MULTIPLY: begin
                    z_sign<=a_sign^b_sign;
                    z_exponent<=a_exponent+b_exponent+1;
                    product<=a_mantissa*b_mantissa*4;
                end
                NORMALIZE2: begin
                    z_mantissa<=product[49:26];
                    guard_bit<=product[25];
                    round_bit<=product[24];
                    sticky<=(product[23:0]!=0);
                end
                ROUND: begin
                    if($signed(z_exponent)<-126) begin
                        z_exponent<=z_exponent+(-126-$signed(z_exponent));
                        z_mantissa<=z_mantissa>>(-126-$signed(z_exponent));
                        guard_bit<=z_mantissa[0];
                        round_bit<=guard_bit;
                        sticky<=sticky|round_bit;
                    end else if(z_mantissa[23]==0) begin
                        z_exponent<=z_exponent-1;
                        z_mantissa<=z_mantissa<<1;
                        z_mantissa[0]<=guard_bit;
                        guard_bit<=round_bit;
                        round_bit<=0;
                    end else if(guard_bit&&(round_bit|sticky|z_mantissa[0])) begin
                        z_mantissa<=z_mantissa+1;
                        if(z_mantissa==24'hffffff) z_exponent<=z_exponent+1;
                    end
                end
                PACK: begin
                    z[22:0]<=z_mantissa[22:0];
                    z[30:23]<=z_exponent[7:0]+127;
                    z[31]<=z_sign;
                    if($signed(z_exponent)==-126&&z_mantissa[23]==0) z[30:23]<=0;
                    if($signed(z_exponent)>127) begin z[22:0]<=0; z[30:23]<=255; z[31]<=z_sign; end
                end
            endcase
        end
    end
endmodule