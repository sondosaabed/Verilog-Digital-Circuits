module MY_MUX(A, B, select, out);
	input A, B, select;
	output out;
	reg out;
	
always @(B or A or select)
	if (select == 0)
		out = B;
	else
		out = A;//new data
endmodule
