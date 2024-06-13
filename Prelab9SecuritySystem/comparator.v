module comparator(out, in);
	input [6:0] in;
	output reg out;
	
	always @(in)
		begin
			if(in == 7'b0100100)
				out = 1'b1;
			else
				out = 1'b0;
		end
endmodule 

module comparator(out, in);
	input [2:0] in;  
	output reg out;
	
	always @(in)
		begin
			if(in == 3'b011)  
				out = 1'b1;
			else
				out = 1'b0;
		end
endmodule


module comparator(out, in);
	input [2:0] in;  
	output reg out;
	reg [2:0] passwords[0:3];
	
	initial begin
		passwords[0] = 3'b001;  // Password 1: 1
		passwords[1] = 3'b010;  // Password 2: 2
		passwords[2] = 3'b100;  // Password 3: 4
		passwords[3] = 3'b101;  // Password 4: 5
	end
	
	always @(in)
		begin
			if(in == passwords[0] || in == passwords[1] || in == passwords[2] || in == passwords[3])
				out = 1'b1;
			else
				out = 1'b0;
		end
endmodule
