`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 17:42:10
// Design Name: 
// Module Name: n_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// This code is only meant for two inputs and three output; 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comp #(parameter WIDTH = 8) (
            input [WIDTH-1:0] in1,
            input [WIDTH-1:0] in2,
            output reg a_eq_b,
            output reg a_lt_b,
            output reg a_gt_b
            );
          
 always @(*)
 begin
    if (in1 > in2)begin
        a_gt_b = 1;a_lt_b = 0;a_eq_b = 0;end
    else if (in1 < in2)begin
        a_gt_b = 0;a_lt_b = 1;a_eq_b = 0;end
    else if (in1 == in2)begin
        a_gt_b = 0;a_lt_b = 0;a_eq_b = 1;end
 end           
endmodule

