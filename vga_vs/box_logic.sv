module box_logic (
    input logic clk,               // Pixel clock
    input logic box_enable,        // Enable bouncing box
    input logic [9:0] max_x,       // Screen width
    input logic [9:0] max_y,       // Screen height
    input logic [9:0] box_width,   // Box width
    input logic [9:0] box_height,  // Box height
    input logic [9:0] xcounter,    // Horizontal pixel counter
    input logic [9:0] ycounter,    // Vertical pixel counter
    output logic [9:0] box_x_pos,  // Current X position of box
    output logic [9:0] box_y_pos,  // Current Y position of box
    output logic x_dir,            // X direction (0: right, 1: left)
    output logic y_dir             // Y direction (0: down, 1: up)
);

    always_ff @(posedge clk) begin
        if (box_x_pos == 0 && box_y_pos == 0) begin
            box_x_pos <= (max_x - box_width) / 2;
            box_y_pos <= (max_y - box_height) / 2;
            x_dir <= 0;  // Start moving right
            y_dir <= 0;  // Start moving down
        end else begin
            if (ycounter == 0 && xcounter == 0) begin
                // X-axis movement
                if (x_dir == 0) begin  // Moving right
                    if (box_x_pos + box_width >= max_x)
                        x_dir <= 1;  // Change to left
                    else
                        box_x_pos <= box_x_pos + 1;
                end else begin  // Moving left
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
                end else begin  // Moving up
                    if (box_y_pos <= 0)
                        y_dir <= 0;  // Change to down
                    else
                        box_y_pos <= box_y_pos - 1;
                end
            end
        end
    end
endmodule
