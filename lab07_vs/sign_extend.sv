module sign_extend(
	input logic [15:0] Imm,
	output logic [31:0] SignImm
);
	always_comb begin
    	SignImm = {{16{Imm[15]}}, Imm};  // Repeat the sign bit (Imm[15]) for the upper 16 bits
	end

endmodule
