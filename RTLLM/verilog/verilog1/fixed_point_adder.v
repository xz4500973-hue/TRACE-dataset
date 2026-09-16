module fixed_point_adder #(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
	)
	(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );

reg [31:0] res;

assign c = res;
wire [30:0] a1;
wire [30:0] a2;
wire [30:0] a3;
wire [30:0] a4;
assign a1 = a[30:0] + b[30:0];
assign a2 = a[30:0] - b[30:0];
assign a3 = b[30:0] - a[30:0];
always @(a,b) begin
	// both negative or both positive
	if(a[31] == b[31]) begin				
		res = {a[31], a1};											  
		end												
	//	one of them is negative...
	else if(a[30] == 0 && b[30] == 1) begin		
		if( a[30:0] > b[30:0] ) begin					
			res = {1'b0,a2};								
			end
		else begin												
			res[N-2:0] = b[N-2:0] - a[N-2:0];			
			if (res[N-2:0] == 0)
				res[N-1] = 0;										
			else
				res[N-1] = 1;										
			end
		end
	else begin												
		if( a[N-2:0] > b[N-2:0] ) begin					
			res[N-2:0] = a[N-2:0] - b[N-2:0];			
			if (res[N-2:0] == 0)
				res[N-1] = 0;										
			else
				res[N-1] = 1;										
			end
		else begin												
			res[N-2:0] = b[N-2:0] - a[N-2:0];			
			res[N-1] = 0;										
			end
		end
	end
endmodule