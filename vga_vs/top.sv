module top(
    input logic clk,          // Input clock signal (50 MHz)
    input logic gradient,     // Control signal to enable gradient
    input logic red,          // Control signal to enable red color
    input logic green,        // Control signal to enable green color
    input logic blue,         // Control signal to enable blue color
    input logic white,        // Control signal to enable white color
    output logic vga_h_sync,  // VGA horizontal sync
    output logic vga_v_sync,  // VGA vertical sync
    output logic clk_out,     // Divided clock output
    output logic [7:0] VGA_R, // 8-bit red color output
    output logic [7:0] VGA_G, // 8-bit green color output
    output logic [7:0] VGA_B, // 8-bit blue color output
    output logic vga_sync,    // Combined VGA sync signal
    output logic vga_blank    // Combined Blank Signal
);

    // Internal signals
    logic [9:0] xcounter;  // Horizontal pixel counter
    logic [9:0] ycounter;  // Vertical pixel counter
    logic inDisplayArea;    // Indicates if the pixel is inside the display area
    logic pixel_clk;        // Divided pixel clock

    // Define panning variables
    logic [9:0] max_x = 640; // Screen width (640 pixels)
    logic [9:0] max_y = 480; // Screen height (480 pixels)

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
    assign vga_sync = vga_h_sync & vga_v_sync;
    assign vga_blank = inDisplayArea;

    // Determine if the current pixel is inside the display area
    always_ff @(posedge pixel_clk) begin
        if (xcounter < max_x && ycounter < max_y)
            inDisplayArea <= 1;  // Inside the display area
        else
            inDisplayArea <= 0;  // Outside the display area
    end

    // Generate the RGB signals for gradient and color modes
    always_ff @(posedge pixel_clk) begin
        if (inDisplayArea) begin
            // Ensure only one color mode is active at a time
            if ((gradient + red + green + blue + white) > 1) begin
                // If multiple signals are active, show black
                VGA_R <= 8'b00000000;
                VGA_G <= 8'b00000000;
                VGA_B <= 8'b00000000;
            end
            else begin
                // Only one color mode is active
                if (gradient) begin
                    // Gradients based on horizontal and vertical positions
						  // Use a smoother gradient by scaling `xcounter` and `ycounter` for finer color control
						  VGA_R <= (xcounter * 255) / 639;   // Smooth red gradient from left to right
                    VGA_G <= (ycounter * 255) / 479;   // Smooth green gradient from top to bottom
                    VGA_B <= ((xcounter + ycounter) * 255) / (639 + 479);  // Blue gradient combining both axes
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
                    VGA_B <= 8'b11111111;  // Full intensity blue (white color)
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
