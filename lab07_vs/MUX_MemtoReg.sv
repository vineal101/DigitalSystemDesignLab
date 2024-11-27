module MUX_MemtoReg(
	input logic MemtoReg,
	input logic[31:0] ALUResult,
	input logic[31:0] RD, //from data memory
	output logic[31:0] MemtoReg_out
);
	
	always_comb begin
    	if (MemtoReg)
        	MemtoReg_out = RD;
    	else
        	MemtoReg_out = ALUResult;
	end



endmodule
