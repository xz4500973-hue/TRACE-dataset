`timescale 1ns/1ps

module float_multi(clk, rst, a, b, z);
    input clk, rst;
    input [31:0] a, b;
    output reg [31:0] z;

    // Pipeline registers between stages
    reg [31:0] a_s1, b_s1;
    reg [23:0] a_m_s2, b_m_s2, z_m_s3, z_m_s4;
    reg [9:0]  a_e_s2, b_e_s2, z_e_s3, z_e_s4;
    reg        a_s_s2, b_s_s2, z_s_s3, z_s_s4;
    reg [49:0] prod_s3;
    reg        g_s4, r_s4, s_s4;
    reg [3:0]  pipe_stage;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pipe_stage<=0; a_s1<=0; b_s1<=0; z<=0;
        end else begin
            pipe_stage<=pipe_stage+1;
            if(pipe_stage==0) begin a_s1<=a; b_s1<=b; end
            else if(pipe_stage==1) begin
                a_m_s2<=a_s1[22:0]; b_m_s2<=b_s1[22:0];
                a_e_s2<=a_s1[30:23]-127; b_e_s2<=b_s1[30:23]-127;
                a_s_s2<=a_s1[31]; b_s_s2<=b_s1[31];
            end
            else if(pipe_stage==2) begin
                // Handle special + denormal
                if((a_e_s2==128&&a_m_s2!=0)||(b_e_s2==128&&b_m_s2!=0))
                    z<={1'b1,8'hFF,1'b1,22'd0};
                else if(a_e_s2==128||b_e_s2==128)
                    z<={a_s_s2^b_s_s2,8'hFF,23'd0};
                else if(($signed(a_e_s2)==-127&&a_m_s2==0)||($signed(b_e_s2)==-127&&b_m_s2==0))
                    z<={a_s_s2^b_s_s2,31'd0};
                else begin
                    if($signed(a_e_s2)==-127)a_e_s2<=-126;else a_m_s2[23]<=1;
                    if($signed(b_e_s2)==-127)b_e_s2<=-126;else b_m_s2[23]<=1;
                    if(~a_m_s2[23])begin a_m_s2<=a_m_s2<<1;a_e_s2<=a_e_s2-1;end
                    if(~b_m_s2[23])begin b_m_s2<=b_m_s2<<1;b_e_s2<=b_e_s2-1;end
                    z_s_s3<=a_s_s2^b_s_s2;
                    z_e_s3<=a_e_s2+b_e_s2+1;
                    prod_s3<=a_m_s2*b_m_s2*4;
                end
            end
            else if(pipe_stage==3) begin
                if(!((a_e_s2==128&&a_m_s2!=0)||(b_e_s2==128&&b_m_s2!=0))&&
                   !(a_e_s2==128||b_e_s2==128)&&
                   !(($signed(a_e_s2)==-127&&a_m_s2==0)||($signed(b_e_s2)==-127&&b_m_s2==0))) begin
                    z_m_s4<=prod_s3[49:26];
                    g_s4<=prod_s3[25]; r_s4<=prod_s3[24];
                    s_s4<=(prod_s3[23:0]!=0);
                end
            end
            else if(pipe_stage==4) begin
                if($signed(z_e_s3)<-126)begin
                    z_e_s4<=z_e_s3+(-126-$signed(z_e_s3));
                    z_m_s4<=z_m_s4>>(-126-$signed(z_e_s3));
                    g_s4<=z_m_s4[0];r_s4<=g_s4;s_s4<=s_s4|r_s4;
                end else if(z_m_s4[23]==0)begin
                    z_e_s4<=z_e_s3-1;z_m_s4<=z_m_s4<<1;z_m_s4[0]<=g_s4;g_s4<=r_s4;r_s4<=0;
                end else if(g_s4&&(r_s4|s_s4|z_m_s4[0]))begin
                    z_m_s4<=z_m_s4+1;if(z_m_s4==24'hffffff)z_e_s4<=z_e_s3+1;else z_e_s4<=z_e_s3;
                end else z_e_s4<=z_e_s3;
            end
            else if(pipe_stage==5) begin
                z[22:0]<=z_m_s4[22:0];z[30:23]<=z_e_s4[7:0]+127;z[31]<=z_s_s3;
                if($signed(z_e_s4)==-126&&z_m_s4[23]==0)z[30:23]<=0;
                if($signed(z_e_s4)>127)begin z[22:0]<=0;z[30:23]<=255;end
            end
        end
    end
endmodule