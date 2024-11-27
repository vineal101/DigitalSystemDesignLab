module room (input logic clk, n, s, e, w, v, reset,
output logic s0, s1, s2, sw, s3, s4, d, s5, win, s6);

	logic s0n, s1n, s2n, s3n, s4n, s5n, s6n;

	assign s0n= reset | s0&~e | s1&w;
	d_ff dff0(.d(s0n),
		   	 .clk(clk),
			    .q(s0));

	assign s1n=(s2 & n | s0 & e | s1 & ~w & ~s) & ~reset;
	d_ff dff1 (.d(s1n),
				  .clk(clk),
				  .q(s1));
	assign s2n =(s3 & e | s1 & s | s2 & ~n & ~w & ~(s&e)) & ~reset;
	d_ff dff2 (.d(s2n),
				  .clk(clk),
				  .q(s2));

	assign s3n= (s2 & w | s3 & ~e) & ~reset;
	d_ff dff3(.d(s3n),
				 .clk(clk),
				 .q(s3));
				
	assign s4n= (s2 & e & s) & ~reset;
	d_ff dff4 (.d(s4n),
				  .clk(clk),
				  .q(s4));

	assign s5n= (s4 & ~v | s5) & ~reset;
	d_ff dff5 (.d(s5n),
				  .clk(clk),
				  .q(s5));
				
	assign s6n= (s4 & v | s6) & ~reset;
	d_ff dff6 (.d(s6n),
				  .clk(clk),
				  .q(s6));

	assign sw=s3;
	
	assign win=s6;
	
	assign d=s5;



endmodule