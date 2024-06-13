module quad_mux_2to1(
    input [3:0] data0, data1, 
    input [1:0] sel,                        
    output reg [3:0] out                    
);

always @*
case (sel)
    2'b0: out = data0;
    2'b1: out = data1;
endcase

endmodule 