`timescale 1ns / 10ps
module Top();
	
    reg bcd[3:0];
    wire ex3[3:0];

    
    initial begin
        #50
            bcd[0] = 1'b0;
            bcd[1] = 1'b0;
            bcd[2] = 1'b0;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b1;
            bcd[1] = 1'b0;
            bcd[2] = 1'b0;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b0;
            bcd[1] = 1'b1;
            bcd[2] = 1'b0;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b1;
            bcd[1] = 1'b1;
            bcd[2] = 1'b0;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b0;
            bcd[1] = 1'b0;
            bcd[2] = 1'b1;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b1;
            bcd[1] = 1'b0;
            bcd[2] = 1'b1;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b0;
            bcd[1] = 1'b1;
            bcd[2] = 1'b1;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b1;
            bcd[1] = 1'b1;
            bcd[2] = 1'b1;
            bcd[3] = 1'b0;
        #50
            bcd[0] = 1'b0;
            bcd[1] = 1'b0;
            bcd[2] = 1'b0;
            bcd[3] = 1'b1;
        #50
            bcd[0] = 1'b1;
            bcd[1] = 1'b0;
            bcd[2] = 1'b0;
            bcd[3] = 1'b1;
        #50 $finish;
    end
	

	trans u1( 
        .bcd({bcd[3], bcd[2], bcd[1], bcd[0]}),
        .ex3({ex3[3], ex3[2], ex3[1], ex3[0]})
    );

endmodule