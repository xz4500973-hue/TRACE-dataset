`timescale 1ns/1ps
module fixed_point_substractor #(parameter Q=15,N=32)(input[N-1:0]a,b,output[N-1:0]c);
    wire sa=a[N-1],sb=b[N-1];
    wire[N-2:0]ma=sa?-a[N-2:0]:a[N-2:0],mb=sb?-b[N-2:0]:b[N-2:0];
    wire eq=sa==sb; wire[N-2:0] sm=ma+mb; wire[N-2:0] df; wire bo;
    assign{bo,df}=ma>=mb?{1'b0,ma-mb}:{1'b0,mb-ma};
    assign c=eq?{sa,df}:{sa,sm};
endmodule