`timescale 1ns / 10ps
module Top();
	
    reg  A[3:0];
    reg  B[3:0];
    reg select;
    reg Enable;
    wire out[3:0];

    
    initial begin
        #50
            Enable = 1'b1;
            select = 1'b0;
            
            A[0] = 4'b0;
            A[1] = 4'b0;
            A[2] = 4'b1;
            A[3] = 4'b0;
            
            B[0] = 4'b1;
            B[1] = 4'b1;
            B[2] = 4'b0;
            B[3] = 4'b1;
            
        #50
            select = 1'b1;
            
        #50
            A[0] = 4'b1;
            A[1] = 4'b0;
            A[2] = 4'b0;
            A[3] = 4'b1;
            
            B[0] = 4'b0;
            B[1] = 4'b1;
            B[2] = 4'b0;
            B[3] = 4'b0;
            
        #50
            Enable = 1'b0;
            select = 1'b0;
            
            A[0] = 4'b0;
            A[1] = 4'b0;
            A[2] = 4'b1;
            A[3] = 4'b0;
            
            B[0] = 4'b1;
            B[1] = 4'b1;
            B[2] = 4'b0;
            B[3] = 4'b1;
            
        #50
            select = 1'b1;
            
        #50
            A[0] = 4'b1;
            A[1] = 4'b0;
            A[2] = 4'b0;
            A[3] = 4'b1;
            
            B[0] = 4'b0;
            B[1] = 4'b1;
            B[2] = 4'b0;
            B[3] = 4'b0;

        #50 $finish;
    end
	

	Mulitiplexer u1(
        .A({A[3], A[2], A[1], A[0]}),
        .B({B[3], B[2], B[1], B[0]}), 
        .S(select),
        .E(Enable),
        .out({out[3], out[2], out[1], out[0]})
        );

endmodule