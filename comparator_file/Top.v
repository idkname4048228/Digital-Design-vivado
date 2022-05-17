`timescale 1ns / 10ps
module Top();
	
    reg  A[3:0];
    reg  B[3:0];
    wire less, greater, equal;

    
    initial begin
        #50
            A[0] = 1'b0;
            A[1] = 1'b0;
            A[2] = 1'b0;
            A[3] = 1'b0;
            
            B[0] = 1'b1;
            B[1] = 1'b0;
            B[2] = 1'b0;
            B[3] = 1'b0;
        #50
            A[0] = 1'b1;
            A[1] = 1'b0;
            A[2] = 1'b0;
            A[3] = 1'b0;
            
            B[0] = 1'b0;
            B[1] = 1'b0;
            B[2] = 1'b0;
            B[3] = 1'b0;
        #50
            A[0] = 1'b1;
            A[1] = 1'b0;
            A[2] = 1'b1;
            A[3] = 1'b0;
            
            B[0] = 1'b1;
            B[1] = 1'b0;
            B[2] = 1'b1;
            B[3] = 1'b0;
        #50 $finish;
    end
	

	compare u1( 
        .A({A[3], A[2], A[1], A[0]}),
        .B({B[3], B[2], B[1], B[0]}),
        .less(less),
        .greater(greater),
        .equal(equal)
    );

endmodule