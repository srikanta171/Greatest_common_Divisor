`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 14:25:54
// Design Name: 
// Module Name: gds
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


module gds(
input clk,
input rst,
input go,
input a_lt_b,
input a_gt_b,
input a_eq_b,
output a_sel,
output b_sel,
output a_ld,
output b_ld,
output op_en,
output done
    );
reg state;
parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=6, s7=7, s8=8 ;
 
always @(posedge clk)
begin
case (state)

end
endmodule
