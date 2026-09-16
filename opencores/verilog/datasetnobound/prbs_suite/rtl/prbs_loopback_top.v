/////////////////////////////////////////////////////////////////////
////                                                             ////
////                    laikos@yahoo.com                         ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module prbs_loopback_top(
input wire clk,
input wire rst_in,
input wire test_in,
output wire led15,
output wire led14,
output wire led13
);

//invert reset
wire rst;
assign rst=~rst_in;


//clk div
reg [23:0] ctr=24'd0;

always@(posedge clk)
begin
	ctr<=ctr+1'b1;
end
assign led15=ctr[23];

wire clk_div2;
wire clk_div4;

assign clk_div2=ctr[0];
assign clk_div4=ctr[1];
assign clk_div8=ctr[2];

//test pin
wire test;
assign test= (test_in)?1'b0:clk_div8;

//prbs 7x1_gen0
//prbs 7x1 => prbs7x1_gen
wire prbs23_x1_signal /* synthesis preserve */;
prbs23x1_gen prbs23x1_gen0(
	.clk(clk_div4),
	.noise(test),
	.reset(rst),
	.prbs_out(prbs23_x1_signal)
)/* synthesis preserve */;

//prbs 7x1_chk0
prbs23x1_chk prbs23x1_chk0(
	.clk(clk_div4),
	.reset(rst),
	.error(led14),
	.prbs_in(prbs23_x1_signal)
)/* synthesis preserve */;
endmodule
