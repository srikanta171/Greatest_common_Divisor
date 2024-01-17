`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 16:05:43
// Design Name: 
// Module Name: n_bit_pipo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// This module has been used in the data path design.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pipo #(parameter WIDTH = 8) (
        input [WIDTH-1 :0] in,
        input ld,
        input clk, rst,
        output [WIDTH-1:0] out
        );
reg [WIDTH-1:0] pipo_reg;
always @(posedge clk or posedge rst)
begin
    if (rst)
        pipo_reg <= 0;
    else if (ld)
        pipo_reg <= in;
   
end
assign out=pipo_reg;
endmodule

