`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2026 22:18:45
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input logic a,
input logic b,
input logic cin,
output logic sum,
output logic carry
);
logic sin;

always@(*) begin
sin<=a^b;
sum<=sin^cin;
  carry=(a&b)|(cin&sin);

end
endmodule
