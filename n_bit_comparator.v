`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 16:24:29
// Design Name: 
// Module Name: n_bit_comparator
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

module comparator #(parameter WIDTH = 4, VALUE = 10) (
                    input [WIDTH-1:0] in,
                    output eql
                    );
 
 assign eql = (in == VALUE) ? 1 : 0;
 
endmodule

