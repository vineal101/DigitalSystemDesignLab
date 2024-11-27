module d_ff(
	input logic d,
	input logic clk,
	input logic reset,
	output logic q);
	
	always @ (posedge clk) begin
		if (reset)
			q <= 1'b0; // Set q to 0 on clock edge
		else
			q <= d; // Set q to d on clock edge
	end
endmodule