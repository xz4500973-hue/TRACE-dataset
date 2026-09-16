`timescale 1ns/1ps
module fsm(IN,MATCH,CLK,RST);
    input IN,CLK,RST; output reg MATCH;
    reg[2:0]ST_cr,ST_nt;
    parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
    always @(posedge CLK or posedge RST)
        if(RST)ST_cr<=s0;else ST_cr<=ST_nt;
    always @(*)begin
        case(ST_cr)
            s0:ST_nt=IN?s1:s0;
            s1:ST_nt=IN?s1:s2;
            s2:ST_nt=IN?s1:s3;
            s3:ST_nt=IN?s4:s0;
            s4:ST_nt=IN?s5:s2;
            s5:ST_nt=IN?s1:s2;
        endcase
    end
    always @(posedge CLK or posedge RST)
        if(RST)MATCH<=0;else MATCH<=(ST_nt==s4&&IN);
endmodule