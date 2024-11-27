module top(
	input logic clk, rst,
	input logic [1:0] sw,
	output logic [31:0] ALUResult,
	output logic [31:0] RD1, RD2,
	output logic [31:0] prode_register_file,
	output logic [6:0] display_led,
	output logic [31:0] prode_data
);
	
	// Board Number is 535
	logic [31:0] inst_0 = 32'b0;
	logic [31:0] inst_1 = 32'b010101_00000_00001_0000_0000_0000_0101; // Load Data_Memory[5] to Register_File[1].
	//logic [31:0] inst_2 = 32'b010100_00000_00110_0000_0000_0000_0010; // Store Register_File[6] to Data_Memory[2]. 
	logic [31:0] inst_2 = 32'b010100_00000_0010_0000_0000_0000_0010; // Store Register_File[5] to Data_Memory[2]. 
	logic [31:0] inst_ex;
	assign inst_ex = (sw == 1) ? inst_1 : (sw == 2) ? inst_2 : inst_0;

	logic [31:0] WD3, SignImm, SrcB, MemReadData;
	logic [4:0] write_reg;
	logic MemtoReg, ALUSrc, RegDst, MemWrite, MemRead;
	logic [31:0] MemtoReg_out;

	register_file r_f(
    	.clk(clk),
    	.rst(rst),
    	.A1(inst_ex[25:21]),
    	.A2(inst_ex[20:16]),
    	.A3(write_reg),
    	.WD3(WD3),
    	.WE3(MemtoReg),
    	.RD1(RD1),
    	.RD2(RD2),
    	.prode(prode_register_file)
	);

	data_memory d_mem(
    	.clk(clk),
    	.rst(rst),
    	.A(ALUResult),
    	.WD(RD2),
    	.WE(MemWrite),
    	.RD(MemReadData),
    	.prode(prode_data)
	);

	MUX_ALUSrc mux_alusrc(
    	.ALUSrc(ALUSrc),
    	.RegData(RD2),
    	.Imm(SignImm),
    	.ALUSrc_out(SrcB)
	);

	MUX_RegDst mux_regdst(
    	.RegDst(RegDst),
    	.RT(inst_ex[20:16]),
    	.RD(inst_ex[15:11]),
    	.RegDst_out(write_reg)
	);

	MUX_MemtoReg mux_memtoreg(
    	.MemtoReg(MemtoReg),
    	.ALUResult(ALUResult),
    	.RD(MemReadData),
    	.MemtoReg_out(WD3)
	);

	sign_extend sign_ext(
    	.Imm(inst_ex[15:0]),
    	.SignImm(SignImm)
	);

	display t2(
    	.data_in(prode_register_file[3:0]),
    	.segments(display_led)
	);
	
	ALU alu_inst(
		.SrcA(RD1),
		.SrcB(SignImm),
		.ALUControl(010),
		.ALUResult(ALUResult)
	);

	always_comb begin
    	case (inst_ex[31:26])
        	6'b010101: begin // lw
            	MemRead = 1;
            	MemWrite = 0;
            	MemtoReg = 1;
            	ALUSrc = 1;
            	RegDst = 0;
        	end
        	6'b010100: begin // sw
            	MemRead = 0;
            	MemWrite = 1;
            	MemtoReg = 0;
            	ALUSrc = 1;
            	RegDst = 0;
        	end
        	default: begin
            	MemRead = 0;
            	MemWrite = 0;
            	MemtoReg = 0;
            	ALUSrc = 0;
            	RegDst = 0;
        	end
    	endcase
	end

	//assign ALUResult = RD1 + SignImm;

endmodule
