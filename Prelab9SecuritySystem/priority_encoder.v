//4 * 2 priority encoder
module priority_encoder(out, in);
	input [3:0] in;
	output reg [1:0] out;
	always @ (in)
	
begin
	casex(in)
		4'b0001:out = 2'b00;
		4'b001x:out = 2'b01;
		4'b01xx:out = 2'b10;
		4'b1xxx:out = 2'b11;
		default:out = 2'b00;
	endcase
end
endmodule 