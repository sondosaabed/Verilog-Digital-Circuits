module mux_8To1(input [7:0] I, input [2:0] sel, output reg out);
always @(*) begin
case (sel)
3'b000: out = I[0];
3'b001: out = I[1];
3'b010: out = I[2];
3'b011: out = I[3];
3'b100: out = I[4];
3'b101: out = I[5];
3'b110: out = I[6];
default: out = I[7];
endcase
end
endmodule
// Sondos Aabed 1190652