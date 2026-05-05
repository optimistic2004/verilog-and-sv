`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2026 22:00:34
// Design Name: 
// Module Name: ripple_adder
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


module ripple_adder(
input logic [3:0] a,
input logic [3:0] b,
input logic cin,
(* keep = "true" *) output logic [3:0] sum,
(* keep = "true" *) output logic cout

    );
    logic [3:0] c;
   
full_adder fa0 (
        .a(a[0]), .b(b[0]), .cin(cin),
        .sum(sum[0]), .carry(c[0])
    );

    // stage 1
    full_adder fa1 (
        .a(a[1]), .b(b[1]), .cin(c[0]),
        .sum(sum[1]), .carry(c[1])
    );

    // stage 2
    full_adder fa2 (
        .a(a[2]), .b(b[2]), .cin(c[1]),
        .sum(sum[2]), .carry(c[2])
    );

    // stage 3 - MSB
    full_adder fa3 (
        .a(a[3]), .b(b[3]), .cin(c[2]),
        .sum(sum[3]), .carry(cout)
    );
   
    
endmodule
