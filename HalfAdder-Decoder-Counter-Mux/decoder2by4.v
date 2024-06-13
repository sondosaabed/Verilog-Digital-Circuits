module decoder2by4(input I0, I1, output D0, D1, D2, D3);
and (D0, ~I1, ~I0);
and (D1, ~I1, ~I0);
and (D2, I1, ~I0);
and (D3, I1, I0);
endmodule
//Sondos Aabed 1190652