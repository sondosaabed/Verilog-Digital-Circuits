module counter_2bit(input clk, reset, output reg[1:0]count);
//Sondos Aabed 1190652
always @(posedge clk, posedge reset) begin
if (reset)
count<=2'b00;
else
count<=count+1;
end
endmodule
