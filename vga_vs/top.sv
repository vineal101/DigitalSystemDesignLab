module top(
	input logic clk,          // Input clock signal (50 MHz)
	input logic gradient,     // Control signal to enable gradient
	input logic red,          // Control signal to enable red color
   input logic green,        // Control signal to enable green color
   input logic blue,         // Control signal to enable blue color
	input logic white,        // Control signal to enable white color
	input logic box_enable,   // Control signal to enable bouncing box
	output logic vga_h_sync,  // VGA horizontal sync
	output logic vga_v_sync,  // VGA vertical sync
	output logic clk_out,     // Divided clock output
	output logic [7:0] VGA_R, // 8-bit red color output
	output logic [7:0] VGA_G, // 8-bit green color output
	output logic [7:0] VGA_B, // 8-bit blue color output
	output logic vga_sync,    // Combined VGA sync signal
	output logic vga_display    // VGA Display Signal
);

	// Internal signals
	logic [9:0] xcounter;  // Horizontal pixel counter
	logic [9:0] ycounter;  // Vertical pixel counter
	logic inDisplayArea;    // Indicates if the pixel is inside the display area
	logic pixel_clk;        // Divided pixel clock

	// Define screen and box parameters
	logic [9:0] max_x = 640;     // Screen width (640 pixels)
	logic [9:0] max_y = 480;     // Screen height (480 pixels)
	logic [9:0] box_width = 50;  // Box width
	logic [9:0] box_height = 50; // Box height

	// Bouncing box position and movement signals
	logic [9:0] box_x_pos;       // Current X position of box
	logic [9:0] box_y_pos;       // Current Y position of box
	logic x_dir;                 // X direction (0: right, 1: left)
	logic y_dir;                 // Y direction (0: down, 1: up)

	// Instantiate the clock divider to generate a pixel clock (e.g., 25.175 MHz from a 50 MHz input)
	clock_divider clk_div_inst (
		 .clk_in(clk),    // Input clock (e.g., 50 MHz)
		 .clk_out(pixel_clk)  // Output pixel clock (e.g., 25 MHz)
	);

	// Instantiate the VGA sync module (hsync and vsync generation)
	vga_sync sync_gen(
		 .clk(pixel_clk),  // Use the divided clock aka pixel clock for timing
		 .h_sync(vga_h_sync),
		 .v_sync(vga_v_sync),
		 .xcounter(xcounter),
		 .ycounter(ycounter)
	);

	assign clk_out = pixel_clk;
	assign vga_sync = vga_h_sync & vga_v_sync;
	assign vga_display = inDisplayArea;

	// Determine if the current pixel is inside the display area
	always_ff @(posedge pixel_clk) begin
		 if (xcounter < max_x && ycounter < max_y)
			  inDisplayArea <= 1;  // Inside the display area
		 else
			  inDisplayArea <= 0;  // Outside the display area
	end

	// Box movement logic
	always_ff @(posedge pixel_clk) begin
		// Initialize box position to center of screen on first clock cycle
		if (box_x_pos == 0 && box_y_pos == 0) begin
			 box_x_pos <= (max_x - box_width) / 2;
			 box_y_pos <= (max_y - box_height) / 2;
			 x_dir <= 0;  // Start moving right
			 y_dir <= 0;  // Start moving down
		end
		else begin
			 // Update box position every few clock cycles to slow down movement
			 if (ycounter == 0 && xcounter == 0) begin
				  // X-axis movement
				  if (x_dir == 0) begin  // Moving right
						if (box_x_pos + box_width >= max_x)
							 x_dir <= 1;  // Change to left
						else
							 box_x_pos <= box_x_pos + 1;
				  end
				  else begin  // Moving left
						if (box_x_pos <= 0)
							 x_dir <= 0;  // Change to right
						else
							 box_x_pos <= box_x_pos - 1;
				  end

				  // Y-axis movement
				  if (y_dir == 0) begin  // Moving down
						if (box_y_pos + box_height >= max_y)
							 y_dir <= 1;  // Change to up
						else
							 box_y_pos <= box_y_pos + 1;
				  end
				  else begin  // Moving up
						if (box_y_pos <= 0)
							 y_dir <= 0;  // Change to down
						else
							 box_y_pos <= box_y_pos - 1;
				  end
			 end
		end
	end

   // Generate the RGB signals for gradient, color, and box modes
   always_ff @(posedge pixel_clk) begin
		if (inDisplayArea) begin
			// Ensure only one mode is active at a time
			if ((gradient + red + green + blue + white + box_enable) > 1) begin
				// If multiple signals are active, show black
				VGA_R <= 8'b00000000; // No red
				VGA_G <= 8'b00000000; // No green
				VGA_B <= 8'b00000000; // No blue
			end
			else begin
				// Only one mode is active
				if (gradient) begin
					VGA_R <= (xcounter * 255) / (max_x - 1);   // Smooth red gradient from left to right
					VGA_G <= 8'b00000000;   // No green
					VGA_B <= (ycounter * 255) / (max_y - 1);  // Blue gradient from top to bottom
				end
				else if (red) begin
					VGA_R <= 8'b11111111;  // Full intensity red
					VGA_G <= 8'b00000000;  // No green
					VGA_B <= 8'b00000000;  // No blue
				end
				else if (green) begin
					VGA_R <= 8'b00000000;  // No red
					VGA_G <= 8'b11111111;  // Full intensity green
					VGA_B <= 8'b00000000;  // No blue
				end
				else if (blue) begin
					VGA_R <= 8'b00000000;  // No red
					VGA_G <= 8'b00000000;  // No green
					VGA_B <= 8'b11111111;  // Full intensity blue
				end
				else if (white) begin
					VGA_R <= 8'b11111111;  // Full intensity red
					VGA_G <= 8'b11111111;  // Full intensity green
					VGA_B <= 8'b11111111;  // Full intensity blue
				end
				else if (box_enable) begin
					if (xcounter >= box_x_pos && 
						xcounter < (box_x_pos + box_width) && 
						ycounter >= box_y_pos && 
						ycounter < (box_y_pos + box_height)) begin
						// Purple
						VGA_R <= 8'b11111111;  // Full red
						VGA_G <= 8'b00000000;  // No Green
						VGA_B <= 8'b11111111;  // Full Blue
					end
					else begin
						// Background - black
						VGA_R <= 8'b00000000; // No red
						VGA_G <= 8'b00000000; // No green
						VGA_B <= 8'b00000000; // No blue
 					end
				end
			end
		end
		else begin
			// Outside the display area, set to black (no intensity)
			VGA_R <= 8'b00000000;
			VGA_G <= 8'b00000000;
			VGA_B <= 8'b00000000;
		end
	end
endmodule