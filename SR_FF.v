`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2019 12:14:48 AM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(
input clk, s, 
output reg GoNoGo
    );
    
    wire r;
    assign r = 0; 
    always @ (posedge clk ) 
    begin
    if ( GoNoGo == 1 || s == 1)
    begin
    GoNoGo <= 1; 
    end else     
    begin 
    GoNoGo <= 0;
    end
   
    end
    
endmodule
