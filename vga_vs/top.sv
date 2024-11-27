module top(
    input logic clk,          // Input clock signal (50 MHz)
    output logic vga_h_sync,  // VGA horizontal sync
    output logic vga_v_sync,  // VGA vertical sync
	 output logic clk_out,
    output logic [7:0] VGA_R, // 4-bit red color output
    output logic [7:0] VGA_G, // 4-bit green color output
    output logic [7:0] VGA_B,  // 4-bit blue color output
	 output logic vga_sync, 		// Combined VGA sync signal
	 output logic vga_blank		 // Combined Blank Signal 	
);

    // Internal signals
	 logic [9:0] xcounter;  // Horizontal pixel counter
    logic [9:0] ycounter;  // Vertical pixel counter
    logic inDisplayArea;    // Indicates if the pixel is inside the display area
    logic pixel_clk;        // Divided pixel clock

    // Instantiate the clock divider to generate a pixel clock (e.g., 25.175 MHz from a 50 MHz input)
    clock_divider clk_div_inst (
        .clk_in(clk),    // Input clock (e.g., 50 MHz)
        .clk_out(pixel_clk)  // Output pixel clock (e.g., 25 MHz)
    );

    // Instantiate the VGA sync module (hsync and vsync generation)
    vga_sync sync_gen(
        .clk(pixel_clk),  // Use the pixel clock for timing
        .h_sync(vga_h_sync),
        .v_sync(vga_v_sync),
        .xcounter(xcounter),
        .ycounter(ycounter)
    );
	 
	 assign clk_out = pixel_clk;
	 assign VGA_sync = vga_h_sync & vga_v_sync;
	 assign vga_blank = inDisplayArea;
	 
    // Determine if the current pixel is inside the display area
    always_ff @(posedge pixel_clk) begin
        if (xcounter < 640 && ycounter < 480)
            inDisplayArea <= 1;  // Inside the display area
        else
            inDisplayArea <= 0;  // Outside the display area
    end

    // Generate the RGB signals (Red image)
    always_ff @(posedge pixel_clk) begin
        if (inDisplayArea) begin
            // Set red color in the display area
            // VGA_R <= 8'b11111111;  // Full red intensity
            // VGA_G <= 8'b00000000;  // No green
            // VGA_B <= 8'b00000000;  // No blue
				
				VGA_R <= {xcounter[7:0]};  // Use the lower 8 bits of xcounter for Red
				VGA_G <= {ycounter[7:0]};  // Use the lower 8 bits of ycounter for Green
				VGA_B <= {xcounter[7:4], ycounter[7:4]};  // Combine x and y for Blue
        end
        else begin
            // Outside the display area, black color (no intensity)
            VGA_R <= 8'b00000000;
            VGA_G <= 8'b00000000;
            VGA_B <= 8'b00000000;
        end
    end
	 

endmodule
