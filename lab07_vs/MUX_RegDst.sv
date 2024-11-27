module MUX_RegDst(
	input logic RegDst,
	input logic [4:0] RT, //target register
	input logic [4:0] RD,
	output logic [4:0] RegDst_out
);

	always_comb begin
    	if (RegDst)
        	RegDst_out = RD;
    	else
        	RegDst_out = RT;
	end

endmodule
