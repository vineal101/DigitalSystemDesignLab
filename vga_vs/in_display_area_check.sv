module in_display_area_check (
    input logic clk,             // Pixel clock
    input logic [9:0] xcounter, // Horizontal pixel counter
    input logic [9:0] ycounter, // Vertical pixel counter
    input logic [9:0] max_x,    // Screen width
    input logic [9:0] max_y,    // Screen height
    output logic inDisplayArea  // Indicates if the pixel is inside the display area
);

    always_ff @(posedge clk) begin
        if (xcounter < max_x && ycounter < max_y)
            inDisplayArea <= 1;
        else
            inDisplayArea <= 0;
    end
endmodule
