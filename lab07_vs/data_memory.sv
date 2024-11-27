module data_memory(
	input logic clk,
	input logic rst,
	input logic [31:0] A,  	//address
	input logic [31:0] WD, 	//input data
	input logic WE,        	//enable input
	output logic [31:0] RD,	//read data
	output logic [31:0] prode  //to check the data in data memory
); //output data

	logic [31:0] memory [0:255];

	always_ff @(posedge clk or posedge rst) begin
    	if (rst) begin
        	for (int i = 0; i < 256; i++) begin
            	memory[i] <= i;
        	end
    	end
    	else if (WE) begin
        	memory[A[7:0]] <= WD; 
    	end
	end

	assign RD = memory[A[7:0]]; 
	assign prode = memory[2];

endmodule