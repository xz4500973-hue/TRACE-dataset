// VARIANT: Merged WPtr+RPtr+WCnt+nEF+rFF into one always block
(* keep_hierarchy = "yes" *) module DPSFnmCE #(parameter addr=4, width=16, init="DPSFnmRAM.coe")(
    input Rst, Clk, WE, RE,
    input [(width-1):0] DI, output [(width-1):0] DO,
    output FF, EF, HF, output [addr:0] Cnt
);
    localparam depth = (2**addr);
    reg [(width-1):0] RAM [(depth-1):0];
    reg [(addr-1):0] A, DPRA, WCnt;
    reg nEF, rFF;
    wire Wr=WE & ~rFF, Rd=RE & ~(~nEF), CE=Wr^Rd;

    always @(posedge Clk) begin
        if(Rst) begin A<=0; DPRA<=0; WCnt<=0; nEF<=0; rFF<=0; end
        else begin
            if(Wr) A<=A+1;
            if(Rd) DPRA<=DPRA+1;
            if(Wr & ~Rd) WCnt<=WCnt+1;
            else if(Rd & ~Wr) WCnt<=WCnt-1;
            if(CE) begin
                nEF<=~(RE & (Cnt==1));
                rFF<=(WE & (&WCnt));
            end
        end
    end

    assign Cnt={rFF,WCnt};
    assign EF=~nEF; assign FF=rFF;
    assign HF=Cnt[addr]|Cnt[(addr-1)];
    assign DO=RAM[DPRA];

    initial $readmemh(init, RAM, 0, (depth-1));
    always @(posedge Clk) if(Wr) RAM[A]<=#1 DI;
endmodule