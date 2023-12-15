`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 13:27:45
// Design Name: 
// Module Name: cotroller
// Project Name: controller designed for GCD data path 
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


module cotroller(
input clk,
input rst,
input go,
input a_lt_b,
input a_gt_b,
input a_eq_b,
output reg a_sel,
output reg b_sel,
output reg a_ld,
output reg b_ld,
output reg op_en,
output reg done,
    output [3:0]state_ctrl  /// port for tracking the change of different states, so the debugging can be easy. 
    );
    reg [3:0]state; /// state register
parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8 ;


///this always statement for state transition according to the input at every rising clock at a particular state 
always @(posedge clk or posedge rst)
begin 
case (state)
s0: begin state <= (go)?s1:s0;  end
s1: begin state <= s2;          end
s2: begin state <= s3;          end    
s3: begin if (a_eq_b) state <= s6;
     else if (a_gt_b) state <= s4;
     else if(a_lt_b)  state <= s7;
    end
s4: begin state <= s5;          end
s5: begin state <= s3;          end
s6: begin state <= s8;          end
s7: begin state <= s5;          end    
s8: begin state <= rst ? s0:s8; end
default : state <= s0;
endcase
end


////when the state changes it gives some output according to the output  signal which will control the data path
always @ (state)
begin
case (state)
s0: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 0;done = 0;end
s1: begin  a_sel=1;b_sel=0;a_ld=1;b_ld=1;op_en = 0;done = 0;end
s2: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 0;done = 0;end
s3: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 0;done = 0;end
s4: begin  a_sel=0;b_sel=0;a_ld=1;b_ld=0;op_en = 0;done = 0;end
s5: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 0;done = 0;end
s6: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 1;done = 1;end
s7: begin  a_sel=0;b_sel=1;a_ld=0;b_ld=1;op_en = 0;done = 0;end
s8: begin  a_sel=0;b_sel=0;a_ld=0;b_ld=0;op_en = 0;done = 1;end
default : begin a_sel=0;b_sel=0;a_ld = 0;b_ld = 0;op_en = 0;done = 0;end
endcase
end
 assign state_ctrl = state;   // this line is to track the state of the controller.
endmodule












