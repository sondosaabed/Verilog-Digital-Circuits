module SIMCOMP (clock, PC, IR, MBR, AC, MAR);

input clock;
output PC, IR, MBR, AC, MAR;

reg [15:0] IR, MBR, AC;
reg [11:0] PC, MAR;
reg [15:0] Memory [0:63];
reg [2:0] state;

parameter load = 4'b0011, store = 4'b1011, add=4'b0111;

initial begin
	// program
	Memory [10] = 16'h3020;
	Memory [11] = 16'h7021;
	Memory [12] = 16'hB014;
	
	// data at byte address
	Memory [32] = 16'd7;
	Memory [33] = 16'd5;

	// set the program counter at the start of the program
	PC = 10;
	state = 0;
end

always @(posedge clock) begin
case (state)
0: begin
	MAR <= PC;
	state = 1; // next state
	end
	
1: begin // Fetch instruction from memory
	IR <= Memory [MAR];
	PC <= PC + 1;
	state = 2; // next state
	end
	
2: begin // Instruction decode
	MAR <= IR[11:0];
	state = 3;
	end
	
3: begin // Operand fetch
	case (IR[15:12])
		load  : MBR <= Memory[MAR];
		add   : MBR <= Memory[MAR];
		store : MBR <= AC;
	endcase
	state = 4;
	end

4: begin // Execute instruction
	if (IR[15:12] == add) begin
		AC <= AC + MBR;
	end
	else if (IR[15:12] == load) begin
		AC <= MBR;
	end
	else if (IR[15:12] == store) begin
		Memory[MAR] <= MBR;
	end
	state = 0;
	end
endcase
end
endmodule 