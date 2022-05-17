
module decoder(	
		input [2:0] three_input,
		output [7:0] eight_output
	);
	
	
	two_to_four_decoder First_Two_to_Four(
        .E(~three_input[2]),
        .two_input({three_input[1], three_input[0]}),
        .four_output({eight_output[3], eight_output[2], eight_output[1], eight_output[0]})
	);
	
    two_to_four_decoder second_Two_to_Four(
        .E(three_input[2]),
        .two_input({three_input[1], three_input[0]}),
        .four_output({eight_output[7], eight_output[6], eight_output[5], eight_output[4]})
    );
    
	
endmodule