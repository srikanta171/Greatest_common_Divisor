// top view
module GCD(clk,rst,go,data_in1,data_in2,done,result,state_ctrl,a_reg_check,b_reg_check);
input wire clk;
input wire rst;
input wire go;
input wire [7:0]data_in1; // set data line
input wire [7:0]data_in2; // set data line
output  done;
output  [7:0]result;     // it will show the gratest common divisior
output [3:0]state_ctrl;
output [7:0] a_reg_check;
output [7:0] b_reg_check;

///instantiations the controller with top view gcd and data path module
cotroller d0 (  .clk(clk),
                .rst(rst),
                .go(go),
                .done(done),
                .a_sel(a_sel),
                .b_sel(b_sel),
                .a_ld(a_ld),
                .b_ld(b_ld),
                .op_en(op_en),
                .a_lt_b(a_lt_b),
                .a_gt_b(a_gt_b),
                .a_eq_b(a_eq_b),
                .state_ctrl(state_ctrl)
                );

// instantations of the data path with top view and data path module
data_path d1 (   .clk(clk),
                 .rst(rst),                
                 .data_in1(data_in1),
                 .data_in2(data_in2),
                 .a_lt_b(a_lt_b),
                 .a_gt_b(a_gt_b),
                 .a_eq_b(a_eq_b),
                 .a_sel(a_sel),
                 .b_sel(b_sel),
                 .a_ld(a_ld),
                 .b_ld(b_ld),
                 .op_en(op_en),
                 .result(result),
                 .a_reg_check(a_reg_check),
                 .b_reg_check(b_reg_check)
                 );

endmodule