`timescale 1ns/1ps

module float_multi(clk, rst, a, b, z);
    input clk, rst;
    input [31:0] a, b;
    output reg [31:0] z;

    reg [2:0] state, next_state;
    reg [23:0] a_m, b_m, z_m;
    reg [9:0]  a_e, b_e, z_e;
    reg        a_s, b_s, z_s;
    reg [49:0] prod;
    reg        g, r, s;

    localparam S_UNPACK    = 3'd0;
    localparam S_SPECIAL   = 3'd1;
    localparam S_NORM1     = 3'd2;
    localparam S_MULT      = 3'd3;
    localparam S_NORM2     = 3'd4;
    localparam S_ROUND     = 3'd5;
    localparam S_PACK      = 3'd6;
    localparam S_IDLE      = 3'd7;

    // State register
    always @(posedge clk or posedge rst) begin
        if(rst) state <= S_IDLE;
        else    state <= next_state;
    end

    // Next state logic (combinational)
    always @(*) begin
        case(state)
            S_IDLE:    next_state = S_UNPACK;
            S_UNPACK:  next_state = S_SPECIAL;
            S_SPECIAL: next_state = S_NORM1;
            S_NORM1:   next_state = S_MULT;
            S_MULT:    next_state = S_NORM2;
            S_NORM2:   next_state = S_ROUND;
            S_ROUND:   next_state = S_PACK;
            S_PACK:    next_state = S_IDLE;
            default:   next_state = S_IDLE;
        endcase
    end

    // Datapath (sequential)
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            a_m<=0;b_m<=0;z_m<=0;a_e<=0;b_e<=0;z_e<=0;
            a_s<=0;b_s<=0;z_s<=0;z<=0;prod<=0;g<=0;r<=0;s<=0;
        end else begin
            case(state)
                S_UNPACK: begin
                    a_m<=a[22:0];b_m<=b[22:0];
                    a_e<=a[30:23]-127;b_e<=b[30:23]-127;
                    a_s<=a[31];b_s<=b[31];
                end
                S_SPECIAL: begin
                    if((a_e==128&&a_m!=0)||(b_e==128&&b_m!=0)) 
                        z<={1'b1,8'hFF,1'b1,22'd0};
                    else if(a_e==128||b_e==128)
                        z<={a_s^b_s,8'hFF,23'd0};
                    else if(($signed(a_e)==-127&&a_m==0)||($signed(b_e)==-127&&b_m==0))
                        z<={a_s^b_s,31'd0};
                    else begin
                        if($signed(a_e)==-127)a_e<=-126;else a_m[23]<=1;
                        if($signed(b_e)==-127)b_e<=-126;else b_m[23]<=1;
                    end
                end
                S_NORM1: begin
                    if(~a_m[23])begin a_m<=a_m<<1;a_e<=a_e-1;end
                    if(~b_m[23])begin b_m<=b_m<<1;b_e<=b_e-1;end
                end
                S_MULT: begin
                    z_s<=a_s^b_s;z_e<=a_e+b_e+1;prod<=a_m*b_m*4;
                end
                S_NORM2: begin
                    z_m<=prod[49:26];g<=prod[25];r<=prod[24];s<=(prod[23:0]!=0);
                end
                S_ROUND: begin
                    if($signed(z_e)<-126)begin
                        z_e<=z_e+(-126-$signed(z_e));
                        z_m<=z_m>>(-126-$signed(z_e));
                        g<=z_m[0];r<=g;s<=s|r;
                    end else if(z_m[23]==0)begin
                        z_e<=z_e-1;z_m<=z_m<<1;z_m[0]<=g;g<=r;r<=0;
                    end else if(g&&(r|s|z_m[0]))begin
                        z_m<=z_m+1;if(z_m==24'hffffff)z_e<=z_e+1;
                    end
                end
                S_PACK: begin
                    z[22:0]<=z_m[22:0];z[30:23]<=z_e[7:0]+127;z[31]<=z_s;
                    if($signed(z_e)==-126&&z_m[23]==0)z[30:23]<=0;
                    if($signed(z_e)>127)begin z[22:0]<=0;z[30:23]<=255;z[31]<=z_s;end
                end
            endcase
        end
    end
endmodule