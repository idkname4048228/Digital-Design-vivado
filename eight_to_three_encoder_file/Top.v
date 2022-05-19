`timescale 1ns / 10ps
module Top();
	
    reg  A[0:7];
    wire  B[0:2];
    wire V;

    
    initial begin
        #50
            A[0] = 1'b0;
            A[1] = 1'b0;
            A[2] = 1'b0;
            A[3] = 1'b0;
            A[4] = 1'b0;
            A[5] = 1'b0;
            A[6] = 1'b0;
            A[7] = 1'b0;
        #50
            A[0] = 1'b1;
        #50
            A[1] = 1'b1;
        #50
            A[0] = 1'b0;
            A[1] = 1'b0;
            A[2] = 1'b1;
        #50
            A[2] = 1'b0;
            A[3] = 1'b1;
        #50
            A[3] = 1'b0;
            A[4] = 1'b1;
        #50
            A[4] = 1'b0;
            A[5] = 1'b1;
        #50
            A[5] = 1'b0;
            A[6] = 1'b1;
        #50
            A[6] = 1'b0;
            A[7] = 1'b1;
        #50 $finish;
    end
	

	encoder u1( 
        .eight_input({A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7]}),//x, y, z
        .three_output({B[0], B[1], B[2]}), 
        .V(V)
    );

endmodule