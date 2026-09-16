`timescale 1ns/1ps
module fixed_point_substractor #(parameter Q=15,N=32)(input[N-1:0]a,b,output[N-1:0]c);
    wire signed[N-1:0] as=a,bs=b,s=as-bs;
    wire ov=(as[N-1]==bs[N-1])&&(s[N-1]!=as[N-1]);
    assign c=ov?{as[N-1],{(N-1){~as[N-1]}}}:s;
endmodule