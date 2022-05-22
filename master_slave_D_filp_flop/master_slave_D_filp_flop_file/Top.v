`timescale 1ns / 10ps
module Top(
        input clkin
    );
    reg  D;
    wire Q;

    initial begin
        #49
            D = 1'b0;
        #48
            D = 1'b1;
        #47
            D = 1'b0;
        #46
            D = 1'b1;
        #50 $finish;
    end
	

	Master_Slave filp_flop(
        .D(D),
        .Clock(clkin),
        .outputQ(Q)
   );

endmodule