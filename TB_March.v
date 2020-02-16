`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 04:09:11 PM
// Design Name: 
// Module Name: TB_March
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


module TB_March(

    );   reg clk;
wire GoNoGo;

March_BIST dut (.Clock(clk),.GoNoGo(GoNoGo) );
always 
begin 
clk = 1 ; # 5 ; clk = 0; #5;
end


endmodule