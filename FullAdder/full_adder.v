module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire x1, x2, x3;

assign x1 = a ^ b;
assign sum = x1 ^ cin;
assign x2 = a & b;
assign x3 = x1 & cin;
assign cout = x2 | x3;

endmodule
