`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 04:09:51 PM
// Design Name: 
// Module Name: TB_MarchLR
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


module TB_MarchLR(

    );
   reg clk;
wire GoNoGo;

MarchLR_BIST dut (.Clock(clk),.GoNoGo(GoNoGo) );
always 
begin 
clk = 1 ; # 5 ; clk = 0; #5;
end


endmodule
