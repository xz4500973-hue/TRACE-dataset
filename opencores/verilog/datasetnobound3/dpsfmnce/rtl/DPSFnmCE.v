// VARIANT: if-else chain replacing separate always blocks, RAM write merged
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
        if(Wr) RAM[A]<=#1 DI;
    end

    assign DO=RAM[DPRA];

    always @(posedge Clk) begin
        if(Rst) begin A<=0; end
        else if(Wr) A<=A+1;
    end

    always @(posedge Clk) begin
        if(Rst) DPRA<=0;
        else if(Rd) DPRA<=DPRA+1;
    end

    always @(posedge Clk) begin
        if(Rst) WCnt<=0;
        else if(Wr & ~Rd) WCnt<=WCnt+1;
        else if(Rd & ~Wr) WCnt<=WCnt-1;
    end

    always @(posedge Clk) begin
        if(Rst) nEF<=0;
        else if(CE) nEF<=~(RE & (Cnt==1));
    end

    always @(posedge Clk) begin
        if(Rst) rFF<=0;
        else if(CE) rFF<=(WE & (&WCnt));
    end

    assign Cnt={rFF,WCnt}; assign EF=~nEF; assign FF=rFF;
    assign HF=Cnt[addr]|Cnt[(addr-1)];

    initial $readmemh(init, RAM, 0, (depth-1));
endmodule