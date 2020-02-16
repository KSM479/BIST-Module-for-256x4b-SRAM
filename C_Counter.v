`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2019 12:35:05 AM
// Design Name: 
// Module Name: C_Counter
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


module C_Counter(
input clk,
output [7: 0] Counter_Address,
output WE,
output [3 : 0] MSB
    );
    wire [3:0] pre1,pre2;
    reg [9 : 0] Counter =0;
    always @ (posedge clk)
    begin
    
    Counter <= Counter +1 ;
    if (Counter == 1023) 
    begin
    Counter <= 1023; 
    end
    end
   
assign WE =(Counter <256 || (Counter> 511 && Counter < 768)) ? 1 : 0;
assign Counter_Address =  Counter[7:0]; 
assign pre1 = (Counter[0])? 1 :0;
assign pre2 = (Counter[0])? 0 :1;
assign MSB = (Counter > 511) ? pre2 : pre1;
endmodule
