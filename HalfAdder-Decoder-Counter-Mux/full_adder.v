module full_adder(input a, b, cin, output sum, cout);
wire w1, w2, w3;
half_adder(a,b,w1,w2);
half_adder(w1, cin, sum, w3);
or G1(cout, w2, w3);
endmodule
//Sondos Aabed 1190652