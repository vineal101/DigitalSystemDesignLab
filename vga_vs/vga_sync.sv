module vga_sync(
    input logic clk,
    output logic h_sync,
    output logic v_sync,
    output logic [9:0] xcounter,
    output logic [9:0] ycounter
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

  always_ff @(posedge clk) begin
    h_sync <= (xcounter > (640 + 16)) && (xcounter < (640 + 16 + 96));   // Horizontal sync pulse is active for 96 clocks. This is sync pulse, while factoring front porch.
  end

  wire y_max = (ycounter == 525); // Total number of vertical lines (10 + 2 + 33 + 480). Front Porch + Sync Pulse + Back Porch + Actual Display Pixels
											// This line means y_max will be 1 when ycounter reaches 525

  // ycounter increments only after the full horizontal scan is done (xcounter == 800)
  always_ff @(posedge clk) begin
    if (x_max) begin
      if (y_max)
        ycounter <= 0;
      else
        ycounter <= ycounter + 1;
    end
  end

  // Vertical sync pulse is active for 2 clocks
  always_ff @(posedge clk) begin
    v_sync <= (ycounter > (480 + 10)) && (ycounter < (480 + 10 + 2));   // active for 2 clocks. This is sync pulse, while factoring front porch.
  end

endmodule
