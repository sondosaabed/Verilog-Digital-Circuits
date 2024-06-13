//priority encoder ( 4x2 )
module MyEncoder(i0,i1,i2,i3,en_out);
input i0,i1,i2,i3;
output [1:0] en_out;
reg [1:0] en_out;
always @ ( i0 or i1 or i2 or i3 )
	if(i3 == 1'b1)
	  en_out <= 2'b11;
	else if(i2 == 1'b1)
	  en_out <= 2'b10;
	else if(i1 == 1'b1)
	  en_out <= 2'b01;
	else 
	  en_out <= 2'b00;
endmodule 