
module trans(	
		input [3:0] bcd,
		output [3:0] ex3
	);
	
	wire net1, net2, net3, net4, net5, net6, net7, net8, net9, net10;
       
    not(ex3[0], bcd[0]);
    
    and(net1, bcd[0], bcd[1]);
    and(net2, ~bcd[0], ~bcd[1]);
    or(ex3[1], net1, net2);
    
    and(net3, ~bcd[2], bcd[1]);
    and(net4, ~bcd[2], bcd[0]);
    and(net5, bcd[2], ~bcd[1]);
    and(net6, net5, ~bcd[0]);
    
    or(net7, net3, net4);
    or(ex3[2], net6, net7);
    
    and(net8, bcd[1], bcd[2]);
    and(net9, bcd[2], bcd[0]);
    or(net10, net8, net9);    
    or(ex3[3], bcd[3], net10);
	
endmodule	