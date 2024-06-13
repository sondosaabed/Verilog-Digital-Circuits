module seven_segment_display_driver(out, in);

	input [1:0] in;
	output reg[6:0] out;
	
	always @(in)
		begin
			case(in)
				0:out = 7'b0000001;
				1:out = 7'b1001111;
				2:out = 7'b0010010;
				3:out = 7'b0000110;
			endcase
		end
endmodule 