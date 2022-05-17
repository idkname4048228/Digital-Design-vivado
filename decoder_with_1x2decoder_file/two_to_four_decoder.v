module two_to_four_decoder(
        input E,
		input [1:0]two_input,  //default one bit
		output [3:0] four_output
    );
    
    wire net0, net1, net2, net3;
    
    one_to_two_decoder First_One_to_Two(
        .E(~two_input[1]),
        .one_input(two_input[0]),
        .two_output({net1, net0})
    );
    
    one_to_two_decoder Second_One_to_Two(
        .E(two_input[1]),
        .one_input(two_input[0]),
        .two_output({net3, net2})
    );
    
    and(four_output[3], net3, E);
    and(four_output[2], net2, E);
    and(four_output[1], net1, E);
    and(four_output[0], net0, E);
     
    
endmodule
