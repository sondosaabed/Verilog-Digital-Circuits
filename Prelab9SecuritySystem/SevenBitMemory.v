module SevenBitMemory(
    input [6:0] data_in,
    input enable,
    input clock,
    output reg [6:0] out
);

// Declare internal signals
wire [6:0] mux_out;
reg [6:0] dff_out;

// Instantiate mux and flip-flops
my_mux mux0 (.A(data_in[0]), .B(dff_out[0]), .select(enable), .out(mux_out[0]));
my_flip_flop dff0 (.Q(dff_out[0]), .D(mux_out[0]), .CLK(clock));

my_mux mux1 (.A(data_in[1]), .B(dff_out[1]), .select(enable), .out(mux_out[1]));
my_flip_flop dff1 (.Q(dff_out[1]), .D(mux_out[1]), .CLK(clock));

my_mux mux2 (.A(data_in[2]), .B(dff_out[2]), .select(enable), .out(mux_out[2]));
my_flip_flop dff2 (.Q(dff_out[2]), .D(mux_out[2]), .CLK(clock));

my_mux mux3 (.A(data_in[3]), .B(dff_out[3]), .select(enable), .out(mux_out[3]));
my_flip_flop dff3 (.Q(dff_out[3]), .D(mux_out[3]), .CLK(clock));

my_mux mux4 (.A(data_in[4]), .B(dff_out[4]), .select(enable), .out(mux_out[4]));
my_flip_flop dff4 (.Q(dff_out[4]), .D(mux_out[4]), .CLK(clock));

my_mux mux5 (.A(data_in[5]), .B(dff_out[5]), .select(enable), .out(mux_out[5]));
my_flip_flop dff5 (.Q(dff_out[5]), .D(mux_out[5]), .CLK(clock));

my_mux mux6 (.A(data_in[6]), .B(dff_out[6]), .select(enable), .out(mux_out[6]));
my_flip_flop dff6 (.Q(dff_out[6]), .D(mux_out[6]), .CLK(clock));

// Assign output
always @ (posedge clock) begin
    if (enable) begin
        dff_out <= mux_out;
    end
end

assign out = dff_out;

endmodule
