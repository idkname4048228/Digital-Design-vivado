
module encoder(	
		input [0:7] eight_input,
		output [2:0] three_output,
		output V
	);
	
    wire net1, net2, net3, net4, net5, net6, net7;
    
    or(V, eight_input[0], eight_input[1], eight_input[2], eight_input[3], eight_input[4], eight_input[5], eight_input[6], eight_input[7]);
    
    or(three_output[2], eight_input[4], eight_input[5], eight_input[6], eight_input[7]);
    
    and(net1, ~eight_input[4], ~eight_input[5]);
    or(net2, eight_input[2], eight_input[3]);
    or(net3, eight_input[6], eight_input[7]);
    and(net4, net1, net2);
    or(three_output[1], net4, net3);
    
    and(net5, eight_input[5], ~eight_input[6]);
    and(net6, eight_input[3], ~eight_input[4], ~eight_input[6]);
    and(net7, eight_input[1], ~eight_input[2], ~eight_input[4], ~eight_input[6]);
    or(three_output[0], net5, net6, net7, eight_input[7]);

    
	
endmodule	