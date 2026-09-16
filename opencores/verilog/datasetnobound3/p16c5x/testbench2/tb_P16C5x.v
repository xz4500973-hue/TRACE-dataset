///////////////////////////////////////////////////////////////////////////////
// I/O & Status Test - 100MHz
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
		$dumpfile("P16C5x_io.vcd");
		$dumpvars(0, tb_P16C5x_v);
		POR=1; Clk=1; ClkEn=1; IO_DI=0; MCLR=0; T0CKI=0; WDTE=1;
		#101; POR=0;
		#899; #60000;
		$display("Simulation finished at %0t", $time); $finish;
	end

	always #5 Clk = ~Clk;  // 100MHz

	always @(posedge Clk) begin
		if(POR) #1 ClkEn <= 0; else #1 ClkEn <= ~ClkEn;
	end

	// I/O and status register test: TRIS port/read port/write port, BSF, BCF on STATUS, SLEEP
	always @(posedge Clk or posedge POR)
	begin
		if(POR) ROM <= 12'b1010_0000_0000;
		else case(PC[11:0])
			12'h000: ROM <= #1 12'b0000_0100_0000; // CLRW
			12'h001: ROM <= #1 12'b0000_0000_0101; // TRISA (all outputs)
			12'h002: ROM <= #1 12'b0000_0000_0110; // TRISB
			12'h003: ROM <= #1 12'b0000_0000_0111; // TRISC
			12'h004: ROM <= #1 12'b1100_1010_1010; // MOVLW 0xAA
			12'h005: ROM <= #1 12'b0000_0010_0101; // MOVWF 0x05 (PORTA write)
			12'h006: ROM <= #1 12'b1100_0101_0101; // MOVLW 0x55
			12'h007: ROM <= #1 12'b0000_0010_0110; // MOVWF 0x06 (PORTB write)
			12'h008: ROM <= #1 12'b0010_0000_0101; // MOVF 0x05,0  (PORTA read)
			12'h009: ROM <= #1 12'b0010_0110_0101; // COMF 0x05,1  (complement PORTA)
			12'h00A: ROM <= #1 12'b0010_0110_0110; // COMF 0x06,1  (complement PORTB)
			12'h00B: ROM <= #1 12'b0101_0000_0011; // BSF 0x03,0   (set C flag)
			12'h00C: ROM <= #1 12'b0100_0010_0011; // BCF 0x03,1   (clear DC flag)
			12'h00D: ROM <= #1 12'b0101_0010_0011; // BSF 0x03,1   (set DC flag)
			12'h00E: ROM <= #1 12'b0000_0110_0101; // CLRF 0x05    (clear PORTA)
			12'h00F: ROM <= #1 12'b0000_0110_0110; // CLRF 0x06    (clear PORTB)
			12'h010: ROM <= #1 12'b1010_0000_0011; // GOTO 0x003 (loop)
			default: ROM <= #1 12'b1010_0000_0000;
		endcase
	end
endmodule