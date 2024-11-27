module sword (
    input logic sw,
    input logic reset,
    input logic clk,
    output logic v
);

    logic state_d, state_q;

    // d_ff instance
    d_ff state_ff (
        .d(state_d),
        .clk(clk),
        .reset(reset),
        .q(state_q)
    );

    // FSM Logic
    always_comb begin
        if (reset) begin
            state_d = 1'b0;  // Reset to NS (No Sword) or 0
        end else begin
            state_d = (sw || state_q); // Next state is R'(SW + HS)
        end
    end

    assign v = state_q;

endmodule
