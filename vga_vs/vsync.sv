module vsync(
    input logic clk,
    input logic [9:0] xcounter,  // Use the horizontal counter as input, from hsync
    output logic vga_v_sync,
    output logic [9:0] ycounter
  );
  
  wire x_max = (xcounter == 800); // Total number of horizontal pixels (16 + 96 + 48 + 640). Front Porch + Sync Pulse + Back Porch + Actual Display Pixels
											// This line means x_max will be 1 when xcounter reaches 800
											 
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

  always_ff @(posedge clk) begin
    vga_v_sync <= (ycounter > (480 + 10)) && (ycounter < (480 + 10 + 2));   // active for 2 clocks. This is sync pulse, while factoring front porch.
  end
endmodule
