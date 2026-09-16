`timescale 1ns/1ps
module fsm(IN,MATCH,CLK,RST);
    input IN,CLK,RST; output reg MATCH;
    reg[2:0]ST;
    parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
    always @(posedge CLK or posedge RST)begin
        if(RST)begin ST<=s0;MATCH<=0;end
        else begin
            case(ST)
                s0:ST<=IN?s1:s0;
                s1:ST<=IN?s1:s2;
                s2:ST<=IN?s1:s3;
                s3:ST<=IN?s4:s0;
                s4:ST<=IN?s5:s2;
                s5:ST<=IN?s1:s2;
            endcase
            MATCH<=(ST==s4&&IN);
        end
    end
endmodule