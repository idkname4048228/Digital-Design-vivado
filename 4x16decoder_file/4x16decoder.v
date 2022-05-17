//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/16 17:05:24
// Design Name: 
// Module Name: four_to_sixteen_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_to_sixteen_decoder(
		input [3:0] A,
		output [7:0] B,
		output [7:0] C
    );
    
    decoder u1(
        .A({~A[3], A[2], A[1], A[0]}),
        .B({B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]})
    );
    decoder u2(
        .A({A[3], A[2], A[1], A[0]}),
        .B({C[7], C[6], C[5], C[4], C[3], C[2], C[1], C[0]})
    );
    
    
endmodule
