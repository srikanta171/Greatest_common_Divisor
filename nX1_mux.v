`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 17:22:07
// Design Name: 
// Module Name: nX1_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// This module has been used in data path design.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mux #(parameter WIDTH = 8) (
        input [WIDTH-1:0] A,
        input [WIDTH-1:0] B,
        input sel,
        output reg [WIDTH-1:0] out
         );
always @(*)
begin
    case(sel)
        1: out = A;
        0: out = B;

    endcase
end
endmodule

