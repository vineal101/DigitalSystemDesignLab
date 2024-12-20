module game(
    input logic clk, n, s, e, w, reset, 
    output logic s0,s1,s2,sw,s3,s4,d,s5,win,s6,v
); 

    room room_f(
        .clk(clk),
        .n(n),
		  .s(s),
        .e(e),
        .w(w), 
        .v(v), 
        .reset(reset),
        .s0(s0),
        .s1(s1), 
        .s2(s2),
		  .sw(sw),
        .s3(s3),
        .s4(s4),
		  .d(d),
		  .s5(s5),
		  .win(win),
        .s6(s6),
    );     
    sword sword_f(
        .sw(sw),   
        .reset(reset),
        .clk(clk),
        .v(v)   
    ); 
    
    assign v = v; 
endmodule