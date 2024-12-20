module hsync(
    input logic clk,
    output logic h_sync,
    output logic [9:0] xcounter
  );
  
  wire x_max = (xcounter == 800); // Total number of horizontal pixels (16 + 96 + 48 + 640). The order is Front Porch + Sync Pulse + Back Porch + Actual Display Pixels
											// This line means x_max will be 1 when xcounter reaches 800
											 
  // xcounter increments with the clock, resets when it reaches 800
  always_ff @(posedge clk) begin
    if (x_max)
      xcounter <= 0;
    else
      xcounter <= xcounter + 1;
  end

  // Horizontal sync pulse is active for 96 clocks
  always_ff @(posedge clk) begin
    h_sync <= (xcounter > (640 + 16)) && (xcounter < (640 + 16 + 96));   // active for 96 clocks. This is sync pulse, while factoring front porch.
  end
 
endmodule
