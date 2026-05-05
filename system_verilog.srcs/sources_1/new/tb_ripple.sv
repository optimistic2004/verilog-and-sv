`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2026 22:55:34
// Design Name: 
// Module Name: tb_ripple
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


// tb_ripple_adder.sv
module tb_ripple;
    logic [3:0] a, b, sum;
    logic cin, cout;

    ripple_adder dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $monitor("time=%0t | a=%0d b=%0d cin=%b | sum=%0d cout=%b",
                  $time, a, b, cin, sum, cout);

        cin=0; a=4'b0000; b=4'b0000; #5;   // 0+0=0
        cin=0; a=4'b0011; b=4'b0101; #5;   // 3+5=8
        cin=0; a=4'b1111; b=4'b0001; #5;   // 15+1=16 → sum=0, cout=1
        cin=1; a=4'b1111; b=4'b1111; #5;   // 15+15+1=31 → sum=15, cout=1
        cin=0; a=4'b1010; b=4'b0101; #5;   // 10+5=15
        cin=0; a=4'b1000; b=4'b1000; #5;   // 8+8=16 → sum=0, cout=1
        $finish;
    end
endmodule