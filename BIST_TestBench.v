`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2019 09:04:16 PM
// Design Name: 
// Module Name: BIST_TestBench
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


module BIST_TestBench(

    );
    
   reg [2:0] What_Do_You_Want_To_Check;
   reg clk,WE;
reg [7:0] Address;
reg [3:0] Data_Input;
wire [3:0] Data_output;
wire GoNoGo;

Full_BIST dut (.What_Do_You_Want_To_Check(What_Do_You_Want_To_Check),.clk(clk),.WE(WE),.Address(Address),
.Data_Input(Data_Input),.Data_output(Data_output),.GoNoGo(GoNoGo) );
always 
begin 
clk = 1 ; # 5 ; clk = 0; #5;
end
initial begin
What_Do_You_Want_To_Check<= 0; #12000;
What_Do_You_Want_To_Check<= 1; #20000;
What_Do_You_Want_To_Check<= 2; #30000;
What_Do_You_Want_To_Check<= 3; #40000;

 

end


endmodule
