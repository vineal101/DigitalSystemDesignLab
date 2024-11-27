module d_ff (
    input logic d,
    input logic clk,
    output logic q
);

    always_ff @(posedge clk) begin
		q <= d; // Set Q to D on clock edge
    end

endmodule