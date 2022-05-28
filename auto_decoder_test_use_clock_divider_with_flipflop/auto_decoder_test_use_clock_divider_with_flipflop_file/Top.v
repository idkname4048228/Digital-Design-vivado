`timescale 1ns / 1ps
module Top(
    input clkin
    );
    
    reg D;
    reg D_four;
    wire two_weight, four_weight;
    wire display[0:7];
    
    initial begin
        D = 1'b0;
        D_four = 1'b0;
        #25
            D = ~D;
        #100
            D = ~D;
        #100
            D = ~D;
            D_four = ~D_four;
        #100
            D = ~D;
            D_four = ~D_four;
        #100
            D = ~D;
        #100
            D = ~D;
        #175    $finish;
    end
    
    postive_edge_trigger two (
        .clk(clkin),
        .D(D),
        .Q(two_weight)
    );
    
    postive_edge_trigger four (
        .clk(two_weight),
        .D(D_four),
        .Q(four_weight)
    );

    decoder test_decoder(
        .three_input({four_weight, two_weight, clkin}),
        .eight_output({display[0], display[1], display[2], display[3], display[4], display[5], display[6], display[7]})
    );
endmodule
