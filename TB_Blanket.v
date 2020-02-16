`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 04:06:15 PM
// Design Name: 
// Module Name: TB_Blanket
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


module TB_Blanket(


    );
    

   reg clk;
wire GoNoGo;

Blanket_BIST dut (.Clock(clk),.GoNoGo(GoNoGo) );
always 
begin 
clk = 1 ; # 5 ; clk = 0; #5;
end


endmodule
