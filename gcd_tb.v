`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 00:58:31
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb;
     reg clk;
     reg rst;
     reg go;
     reg [7:0] data_in1;
     reg [7:0] data_in2;
     wire done;
     wire [7:0] result;
     wire [3:0]state_ctrl;
     wire [7:0] a_reg_check;
     wire [7:0] b_reg_check;
    GCD d0 (
            .clk(clk),
            .rst(rst),
            .go(go),
            .data_in1(data_in1),
            .data_in2(data_in2),
            .done(done),
            .result(result),          
            .state_ctrl(state_ctrl),
            .a_reg_check(a_reg_check),
            .b_reg_check(b_reg_check)
                        
            );
 initial 
 begin
 clk = 0;
 rst=0;
 go = 0;
 end 
 
 always
 begin
 #55 clk =1;
 #55 clk =0;
 end 
 
 initial
 begin
  #70 go=1;
 #115 go=0;
 end
 initial
 begin
 #10 rst =1;
 #20 rst = 0;


 
 data_in1=42;
 data_in2=16;
 
 #970 rst =0;
 #30 rst = 0;  
 end        
            
endmodule








