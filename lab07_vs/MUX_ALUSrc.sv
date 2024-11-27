module MUX_ALUSrc(
	input logic ALUSrc,
	input logic [31:0] RegData,
	input logic [31:0] Imm,
	output logic [31:0] ALUSrc_out
);

	always_comb begin
    	if (ALUSrc)
        	ALUSrc_out = Imm;
    	else
        	ALUSrc_out = RegData;
	end

endmodule
