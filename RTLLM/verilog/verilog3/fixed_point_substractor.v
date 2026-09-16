`timescale 1ns/1ps
module fixed_point_substractor #(parameter Q=15,N=32)(input[N-1:0]a,b,output[N-1:0]c);
    wire sa=a[N-1],sb=b[N-1];
    wire[N-2:0] ma=sa?(~a[N-2:0]+1):a[N-2:0], mb=sb?(~b[N-2:0]+1):b[N-2:0];
    wire cp=ma>=mb; wire[N-2:0] dif=cp?(ma-mb):(mb-ma);
    reg[N-1:0] r;
    always@(*)if(sa==sb)r={sa,dif};
    else if(sa)r={1'b1,ma+mb}; else r={1'b0,ma+mb}; // negate b sign when signs differ
    assign c=r;
endmodule