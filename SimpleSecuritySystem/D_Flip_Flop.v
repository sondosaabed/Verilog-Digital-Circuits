module D_Flip_Flop(Q,D, CLK);
     output Q;
     input D, CLK;
     reg Q;
     always @ (posedge CLK )
        Q=D;  
endmodule 
