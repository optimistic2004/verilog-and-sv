`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2026 22:35:14
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;
    logic a, b, cin, sum, carry;

    full_adder dut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

    initial begin
        $monitor("time=%0t | a=%b b=%b cin=%b | sum=%b carry=%b",
                  $time, a, b, cin, sum, carry);
        // all 8 input combinations
        {a,b,cin} = 3'b000; #5;
        {a,b,cin} = 3'b001; #5;
        {a,b,cin} = 3'b010; #5;
        {a,b,cin} = 3'b011; #5;
        {a,b,cin} = 3'b100; #5;
        {a,b,cin} = 3'b101; #5;
        {a,b,cin} = 3'b110; #5;
        {a,b,cin} = 3'b111; #5;
        $finish;
    end
endmodule
