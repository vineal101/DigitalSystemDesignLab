module room (
    input logic clk, n, s, e, w, v, reset,
    output logic s6, win, s5, d, s4, s3, sw, s2, s1, s0
);

    typedef enum logic [2:0] {
        S0 = 3'b000,
        S1 = 3'b001,
        S2 = 3'b010,
        S3 = 3'b011,
        S4 = 3'b100,
        S5 = 3'b101,
        S6 = 3'b110
    } state_t;

    state_t current_state, next_state;

    // State transition logic using case statement
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            current_state <= S0; // Reset to initial state
        end else begin
            current_state <= next_state; // Update to next state
        end
    end

    // Combinational logic to determine next state
    always_comb begin
        // Default next state
        next_state = current_state;

        case (current_state)
            S0: begin
                if (n) next_state = S1; // Move to S1
                else if (e) next_state = S2; // Move to S2
                else if (w) next_state = S3; // Move to S3
            end

            S1: begin
                if (e) next_state = S0; // Move back to S0
                else if (w) next_state = S4; // Move to S4
            end

            S2: begin
                if (n) next_state = S5; // Move to S5
                else if (e) next_state = S6; // Move to S6
            end

            S3: begin
                if (s) next_state = S4; // Move to S4
                else if (w) next_state = S5; // Move to S5
            end

            S4: begin
                if (v) next_state = S5; // Move to S5 if condition met
                else next_state = S6; // Otherwise, move to S6
            end

            S5: begin
                next_state = S5; // Remain in S5
            end

            S6: begin
                if (~v) next_state = S4; // Conditional transition to S4
                else next_state = S6; // Remain in S6
            end

            default: next_state = S0; // Default to S0
        endcase
    end

    // Output assignments based on current state
    assign sw = (current_state == S3);
    assign win = (current_state == S5);
    assign d = (current_state == S6);
    assign {s6, s5, s4, s3, s2, s1, s0} = current_state; // Outputs based on current state

endmodule

