module MyComp(CData,out);
input [6:0] CData;
wire [6:0] CData;
output out;
reg out;
always @ (CData)
begin
	//compare value in register with 2
	if(CData == 7'b0100100)
		out <=1'b1;
	else
		out <=1'b0;
	end
endmodule 