module clock_divider (
	input logic clk_in, // Input clock
	output logic clk_out // Output divided clock
);

	int counter_down = 0;
		
	// This module divides the clock signal by 2. This creates an output signal of 25 Mhz. 
	always_ff @(posedge clk_in) begin
		if (clk_in) begin // The logic below will trigger clk_out every two cycles of clk_in, dividing input clock
			if(counter_down < 1) begin
					counter_down = counter_down + 1; 
					clk_out <= 1'b0;
			end else if (counter_down == 1) begin 
					counter_down = 0;
					clk_out <= 1'b1; 
			end 
		end
	end
endmodule
