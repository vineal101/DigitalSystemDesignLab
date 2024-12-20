module display_generator (
    input logic clk,              // Pixel clock
    input logic inDisplayArea,    // Indicates if the pixel is inside the display area
    input logic gradient,         // Control signal for gradient mode
    input logic red,              // Control signal for red color
    input logic green,            // Control signal for green color
    input logic blue,             // Control signal for blue color
    input logic white,            // Control signal for white color
    input logic box_enable,       // Control signal for bouncing box
    input logic [9:0] xcounter,   // Horizontal pixel counter
    input logic [9:0] ycounter,   // Vertical pixel counter
    input logic [9:0] max_x,      // Screen width
    input logic [9:0] max_y,      // Screen height
    input logic [9:0] box_x_pos,  // Box X position
    input logic [9:0] box_y_pos,  // Box Y position
    input logic [9:0] box_width,  // Box width
    input logic [9:0] box_height, // Box height
    output logic [7:0] VGA_R,     // 8-bit red color output
    output logic [7:0] VGA_G,     // 8-bit green color output
    output logic [7:0] VGA_B      // 8-bit blue color output
);

    always_ff @(posedge clk) begin
        if (inDisplayArea) begin
            // ONLY ONE MODE CAN BE ACTIVE
            if ((gradient + red + green + blue + white + box_enable) > 1) begin
                // If multiple signals are active, show black
                VGA_R <= 8'b00000000;
                VGA_G <= 8'b00000000;
                VGA_B <= 8'b00000000;
            end else begin
                // Only one mode is active
                if (gradient) begin
                    VGA_R <= (xcounter * 255) / (max_x - 1);   // Smooth red gradient from left to right. We multiply by 255 to make sure it spans across whole screen.
                    VGA_G <= 8'b00000000;
                    VGA_B <= (ycounter * 255) / (max_y - 1);  // Blue gradient from top to bottom. Same as red, just for y.
                end else if (red) begin
                    VGA_R <= 8'b11111111;
                    VGA_G <= 8'b00000000;
                    VGA_B <= 8'b00000000;
                end else if (green) begin
                    VGA_R <= 8'b00000000;
                    VGA_G <= 8'b11111111;
                    VGA_B <= 8'b00000000;
                end else if (blue) begin
                    VGA_R <= 8'b00000000;
                    VGA_G <= 8'b00000000;
                    VGA_B <= 8'b11111111;
                end else if (white) begin
                    VGA_R <= 8'b11111111;
                    VGA_G <= 8'b11111111;
                    VGA_B <= 8'b11111111;
                end else if (box_enable) begin
                    if (xcounter >= box_x_pos && 
                        xcounter < (box_x_pos + box_width) && 
                        ycounter >= box_y_pos && 
                        ycounter < (box_y_pos + box_height)) begin
                        // Purple for box
                        VGA_R <= 8'b11111111;
                        VGA_G <= 8'b00000000;
                        VGA_B <= 8'b11111111;
                    end else begin
                        // Black for background
                        VGA_R <= 8'b00000000;
                        VGA_G <= 8'b00000000;
                        VGA_B <= 8'b00000000;
                    end
                end
            end
        end else begin
            // Outside the display area, set to black (no intensity)
            VGA_R <= 8'b00000000;
            VGA_G <= 8'b00000000;
            VGA_B <= 8'b00000000;
        end
    end
endmodule
