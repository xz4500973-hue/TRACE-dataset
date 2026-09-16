`timescale 1ns/1ps
module fsm(IN,MATCH,CLK,RST);
    input IN,CLK,RST; output reg MATCH;
    reg[5:0]ST; // one-hot
    parameter s0=6'b000001,s1=6'b000010,s2=6'b000100,s3=6'b001000,s4=6'b010000,s5=6'b100000;
    always @(posedge CLK or posedge RST)begin
        if(RST)begin ST<=s0;MATCH<=0;end
        else begin
            case(1'b1)
                ST[0]:ST<=IN?s1:s0;
                ST[1]:ST<=IN?s1:s2;
                ST[2]:ST<=IN?s1:s3;
                ST[3]:ST<=IN?s4:s0;
                ST[4]:ST<=IN?s5:s2;
                ST[5]:ST<=IN?s1:s2;
            endcase
            MATCH<=(ST==s4&&IN);
        end
    end
endmodule