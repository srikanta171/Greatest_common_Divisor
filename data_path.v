`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 13:27:45
// Design Name: 
// Module Name: cotroller
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


module data_path(
input clk,
input rst,
input [7:0]data_in1,
input [7:0]data_in2,
output  a_lt_b, // a<b status flag
output  a_gt_b, //a>b status flag
output  a_eq_b, //a=b status flag
input a_sel, 
input b_sel,
input a_ld,
input b_ld,
input op_en,
output  [7:0]result, 
//
output [7:0] a_reg_check,
output [7:0] b_reg_check
    );
wire [7:0] p,q,x,y,a_temp,b_temp;

substrator sbu_A(.a(a_temp),.b(b_temp),.sub(p));
        
substrator sub_B(.a(b_temp),.b(a_temp),.sub(q));

mux mux_A (.A(data_in1),.B(p),.sel(a_sel),.out(x)); 
            
mux mux_B (.A(q),.B(data_in2),.sel(b_sel),.out(y));

comp d4 (.in1(a_temp),.in2(b_temp),.a_eq_b(a_eq_b),.a_lt_b(a_lt_b),.a_gt_b(a_gt_b));  
            
pipo A (.in(x),.ld(a_ld),.out(a_temp),.clk(clk),.rst(rst));
          
pipo B (.in(y),.ld(b_ld),.out(b_temp),.clk(clk),.rst(rst));
 
pipo out (.in(a_temp),.ld(op_en),.out(result),.clk(clk),.rst(rst));

assign a_reg_check=a_temp;
assign b_reg_check=b_temp;
endmodule

