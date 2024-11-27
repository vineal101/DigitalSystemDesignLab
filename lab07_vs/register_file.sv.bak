module register_file(input logic clk, rst,
input logic[4:0] A1, A2, A3,
input logic[31:0] WD3,
input logic WE3,
output logic[31:0] RD1,
output logic[31:0] RD2,
output logic[31:0] prode
);

logic[31:0] rf_regs[31:0];
assign prode = rf_regs[1];

//register file with width = 32, depth = 32

always_ff@(posedge clk or negedge rst)
begin
	if(!rst) begin //active-low reset
		for(int i = 0; i < 32; i++) begin
			rf_regs[i] <= i;
		end
	end
	else if (WE3) begin
		rf_regs[A3] <= WD3;
		//write other logics here
	end
end

assign RD1 = rf_regs[A1];
assign RD2 = rf_regs[A2];
endmodule
