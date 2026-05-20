`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2026 20:42:49
// Design Name: 
// Module Name: seven_segment
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
module seven_segment (
    input  logic [3:0] digit,    // 4-bit input: 0-F
    (* keep = "true" *) output logic [6:0] segment   // 7-segment output: gfedcba
);
    always @(*) begin
        case (digit)
            4'b0000: segment = 7'b0111111;  // 0111111
            4'b0001: segment = 7'b0000110;  // 0000110
            4'b0010: segment = 7'b1011011;  // 1011011
            4'b0011: segment = 7'b1001111;  // 1001111
            4'h0100: segment = 7'b1100110;  // 1100110
            4'b0101: segment = 7'b1101101;  // 1101101
            4'b0110: segment = 7'b1111101;  // 1111101
            4'b0111: segment = 7'b0000111;  // 0000111
            4'b1000: segment = 7'b1111111;  // 1111111
            4'h1001: segment = 7'b1101111;  // 1101111
            4'ha: segment = 7'h77;  // 1110111
            4'hb: segment = 7'h7C;  // 1111100
            4'hc: segment = 7'h39;  // 0111001
            4'hd: segment = 7'h5E;  // 1011110
            4'he: segment = 7'h79;  // 1111001
            4'hf: segment = 7'h71;  // 1110001
            default: segment = 7'b0; // all off
        endcase
    end
endmodule