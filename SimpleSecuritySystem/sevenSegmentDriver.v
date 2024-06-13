//this will convert binary input 
// to 7-segment input
module sevenSegmentDriver(in_v , out_v ) ;
input [1:0] in_v ;
output [6:0] out_v ;
wire[1:0] in_v ;
reg [6:0] out_v ;
always @ (in_v) 
begin 
	case(in_v)
		0 : out_v = 7'b1000000;
		1 : out_v = 7'b1111001;
		2 : out_v = 7'b0100100;
		3 : out_v = 7'b0110000;
	endcase 
end
endmodule
