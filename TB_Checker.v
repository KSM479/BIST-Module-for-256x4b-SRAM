`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 04:08:12 PM
// Design Name: 
// Module Name: TB_Checker
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


module TB_Checker(

    );
       reg clk;
wire GoNoGo;

Checker_BIST dut (.Clock(clk),.GoNoGo(GoNoGo) );
always 
begin 
clk = 1 ; # 5 ; clk = 0; #5;
end


endmodule

