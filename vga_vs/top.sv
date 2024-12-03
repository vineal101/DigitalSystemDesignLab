module top (
    input logic clk,              // Input clock signal (50 MHz)
    input logic gradient,         // Control signal to enable gradient
    input logic red,              // Control signal to enable red color
    input logic green,            // Control signal to enable green color
    input logic blue,             // Control signal to enable blue color
    input logic white,            // Control signal to enable white color
    input logic box_enable,       // Control signal to enable bouncing box
    output logic vga_h_sync,      // VGA horizontal sync
    output logic vga_v_sync,      // VGA vertical sync
    output logic clk_out,         // Divided clock output
    output logic [7:0] VGA_R,     // 8-bit red color output
    output logic [7:0] VGA_G,     // 8-bit green color output
    output logic [7:0] VGA_B,     // 8-bit blue color output
    output logic vga_sync,        // Combined VGA sync signal
    output logic vga_display      // VGA Display Signal
);

    // Internal signals
    logic [9:0] xcounter;  // Horizontal pixel counter
    logic [9:0] ycounter;  // Vertical pixel counter
    logic inDisplayArea;    // Indicates if the pixel is inside the display area
    logic pixel_clk;        // Divided pixel clock

    // Define screen parameters
    logic [9:0] max_x = 640;     // Screen width (640 pixels)
    logic [9:0] max_y = 480;     // Screen height (480 pixels)
    logic [9:0] box_width = 50;  // Box width
    logic [9:0] box_height = 50; // Box height

    // Bouncing box position and movement signals
    logic [9:0] box_x_pos;       // Current X position of box
    logic [9:0] box_y_pos;       // Current Y position of box
    logic x_dir;                 // X direction (0: right, 1: left)
    logic y_dir;                 // Y direction (0: down, 1: up)

    clock_divider clk_div_inst (
        .clk_in(clk), 
        .clk_out(pixel_clk)
    );

    vga_sync sync_gen (
        .clk(pixel_clk), 
        .h_sync(vga_h_sync),
        .v_sync(vga_v_sync),
        .xcounter(xcounter),
        .ycounter(ycounter)
    );

    box_logic box_logic (
        .clk(pixel_clk),
        .box_enable(box_enable),
        .max_x(max_x),
        .max_y(max_y),
        .box_width(box_width),
        .box_height(box_height),
        .xcounter(xcounter),
        .ycounter(ycounter),
        .box_x_pos(box_x_pos),
        .box_y_pos(box_y_pos),
        .x_dir(x_dir),
        .y_dir(y_dir)
    );

    in_display_area_check display_area (
        .clk(pixel_clk),
        .xcounter(xcounter),
        .ycounter(ycounter),
        .max_x(max_x),
        .max_y(max_y),
        .inDisplayArea(inDisplayArea)
    );

    display_generator color_gen (
        .clk(pixel_clk),
        .inDisplayArea(inDisplayArea),
        .gradient(gradient),
        .red(red),
        .green(green),
        .blue(blue),
        .white(white),
        .box_enable(box_enable),
        .xcounter(xcounter),
        .ycounter(ycounter),
        .max_x(max_x),
        .max_y(max_y),
        .box_x_pos(box_x_pos),
        .box_y_pos(box_y_pos),
        .box_width(box_width),
        .box_height(box_height),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B)
    );

    assign clk_out = pixel_clk;
    assign vga_sync = vga_h_sync & vga_v_sync;
    assign vga_display = inDisplayArea;
    
endmodule
