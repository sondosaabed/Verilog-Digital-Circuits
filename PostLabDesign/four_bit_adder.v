module four_bit_adder (
    input [3:0] a, b,
    output [3:0] sum,
    output cout
);

    wire [3:0] carry;
    full_adder fa0(a[0], b[0], 1'b0, sum[0], carry[0]);
    full_adder fa1(a[1], b[1], carry[0], sum[1], carry[1]);
    full_adder fa2(a[2], b[2], carry[1], sum[2], carry[2]);
    full_adder fa3(a[3], b[3], carry[2], sum[3], cout);

endmodule 