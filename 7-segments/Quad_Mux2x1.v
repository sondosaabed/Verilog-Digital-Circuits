// Hala Nasser 1202997
module Quad_Mux2x1 (input [3:0] a, input [3:0] b, input sel, output [3:0] y);

    assign y = sel ? b : a;

endmodule
