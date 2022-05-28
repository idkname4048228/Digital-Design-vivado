module one_to_two_decoder(
        input E,
		input one_input,  //default one bit
		output [1:0] two_output
    );
    
    and(two_output[0], ~one_input, E);
    and(two_output[1], one_input, E);
    
    
endmodule
