module half_adder_behav(a,b,sum, c_out);
input a,b;
output sum, c_out;
reg sum,c_out;
always @ (a,b) // what affects suma nd carry
begin

{c_out,sum} = a + b ;

end

endmodule