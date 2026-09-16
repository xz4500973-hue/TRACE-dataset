///////////////////////////////////////////////////////////////////////////////
// ALU Test - 25MHz
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_P16C5x_v;

	reg POR; reg Clk; reg ClkEn;
	wire [11:0] PC; reg [11:0] ROM;
	reg MCLR; reg T0CKI; reg WDTE;
	wire WE_TRISA, WE_TRISB, WE_TRISC, WE_PORTA, WE_PORTB, WE_PORTC;
	wire RE_PORTA, RE_PORTB, RE_PORTC;
	wire [7:0] IO_DO; reg [7:0] IO_DI;
	wire Rst; wire [5:0] OPTION; wire [11:0] IR; wire [9:0] dIR;
	wire [11:0] ALU_Op; wire [8:0] KI; wire Err; wire Skip;
	wire [11:0] TOS; wire [11:0] NOS; wire [7:0] W;
	wire [6:0] FA; wire [7:0] DO; wire [7:0] DI;
	wire [7:0] TMR0; wire [7:0] FSR; wire [7:0] STATUS;
	wire T0CKI_Pls; wire WDTClr; wire [9:0] WDT; wire WDT_TC, WDT_TO;
	wire [7:0] PSCntr; wire PSC_Pls;

	P16C5x #(.pWDT_Size(10)) uut (
		.POR(POR), .Clk(Clk), .ClkEn(ClkEn),
		.MCLR(MCLR), .T0CKI(T0CKI), .WDTE(WDTE),
		.PC(PC), .ROM(ROM),
		.WE_TRISA(WE_TRISA), .WE_TRISB(WE_TRISB), .WE_TRISC(WE_TRISC),
		.WE_PORTA(WE_PORTA), .WE_PORTB(WE_PORTB), .WE_PORTC(WE_PORTC),
		.RE_PORTA(RE_PORTA), .RE_PORTB(RE_PORTB), .RE_PORTC(RE_PORTC),
		.IO_DO(IO_DO), .IO_DI(IO_DI),
		.Rst(Rst), .OPTION(OPTION),
		.IR(IR), .dIR(dIR), .ALU_Op(ALU_Op), .KI(KI), .Err(Err),
		.Skip(Skip), .TOS(TOS), .NOS(NOS), .W(W),
		.FA(FA), .DO(DO), .DI(DI), .TMR0(TMR0), .FSR(FSR), .STATUS(STATUS),
		.T0CKI_Pls(T0CKI_Pls), .WDTClr(WDTClr), .WDT(WDT),
		.WDT_TC(WDT_TC), .WDT_TO(WDT_TO),
		.PSCntr(PSCntr), .PSC_Pls(PSC_Pls)
	);

	initial begin
		$dumpfile("P16C5x_alu.vcd");
		$dumpvars(0, tb_P16C5x_v);
		POR=1; Clk=1; ClkEn=1; IO_DI=0; MCLR=0; T0CKI=0; WDTE=1;
		#101; POR=0;
		#899; #30000;
		$display("Simulation finished at %0t", $time); $finish;
	end

	always #20 Clk = ~Clk;  // 25MHz

	always @(posedge Clk) begin
		if(POR) #1 ClkEn <= 0; else #1 ClkEn <= ~ClkEn;
	end

	// ALU test program: MOVLW 55, MOVWF 0x08, COMF 0x08, SWAPF 0x08, RLF 0x08, RRF 0x08, loop
	always @(posedge Clk or posedge POR)
	begin
		if(POR) ROM <= 12'b1010_0000_0000;
		else case(PC[11:0])
			12'h000: ROM <= #1 12'b1100_0101_0101; // MOVLW 0x55
			12'h001: ROM <= #1 12'b0000_0010_1000; // MOVWF 0x08
			12'h002: ROM <= #1 12'b0001_0110_1000; // ANDWF 0x08,1
			12'h003: ROM <= #1 12'b1100_1010_1010; // MOVLW 0xAA
			12'h004: ROM <= #1 12'b0001_0010_1000; // IORWF 0x08,1
			12'h005: ROM <= #1 12'b1100_1111_1111; // MOVLW 0xFF
			12'h006: ROM <= #1 12'b0001_1010_1000; // XORWF 0x08,1
			12'h007: ROM <= #1 12'b0011_0110_1000; // RLF 0x08,1
			12'h008: ROM <= #1 12'b0011_0010_1000; // RRF 0x08,1
			12'h009: ROM <= #1 12'b0011_1010_1000; // SWAPF 0x08,1
			12'h00A: ROM <= #1 12'b0010_0110_1000; // COMF 0x08,1
			12'h00B: ROM <= #1 12'b1010_0000_0000; // GOTO 0x000
			default: ROM <= #1 12'b1010_0000_0000;
		endcase
	end
endmodule