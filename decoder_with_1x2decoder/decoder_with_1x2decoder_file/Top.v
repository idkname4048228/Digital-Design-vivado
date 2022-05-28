`timescale 1ns / 10ps
module Top();
    reg  A[2:0];
    wire B[7:0];

    initial begin
        #50
            A[2] = 1'b0;
            A[1] = 1'b0;
            A[0] = 1'b0;
        #50
            A[0] = 1'b1;
        #50
            A[1] = 1'b1;
            A[0] = 1'b0;
        #50
            A[0] = 1'b1;
        #50
            A[2] = 1'b1;
            A[1] = 1'b0;
            A[0] = 1'b0;
        #50
            A[0] = 1'b1;
        #50
            A[1] = 1'b1;
            A[0] = 1'b0;
        #50
            A[0] = 1'b1;
        #50 $finish;
    end
    
    decoder Three_to_Eight(
        .three_input({A[2], A[1], A[0]}),//x, y, z
        .eight_output({B[0], B[1], B[2], B[3], B[4], B[5], B[6], B[7]}) // inverse
    );

endmodule