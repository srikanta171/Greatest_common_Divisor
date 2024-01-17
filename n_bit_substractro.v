`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 16:53:19
// Design Name: 
// Module Name: n_bit_substractor
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

module substrator #(parameter WIDTH = 8) (
        input [WIDTH-1:0] a,
        input [WIDTH-1:0] b,
        output [WIDTH-1:0] sub
        );
        
assign sub = a - b;
endmodule

