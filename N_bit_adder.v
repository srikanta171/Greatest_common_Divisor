`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 16:32:50
// Design Name: 
// Module Name: N_bit_adder
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


module adder #(parameter WIDTH = 8) (
        input [WIDTH-1:0] in1,
        input [WIDTH-1:0] in2,
        output [WIDTH-1:0] out
        );
        
assign out = in1 + in2;
endmodule

