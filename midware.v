module midware(
	input [15:0]key_out,
	output wire [7:0] X,
	output wire [7:0] Y
);
	assign X=key_out[15:8];
	assign Y=key_out[7:0];
endmodule
