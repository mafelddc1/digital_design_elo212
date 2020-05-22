`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 03:56:40
// Design Name: 
// Module Name: BCD_to_sevenSeg
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


module BCD_to_sevenSeg(
    input logic [3:0] BCD_in,
    output logic [6:0] sevenSeg
    );
    
    always_comb begin
    
        case (BCD_in)         //7'bABCDEFG
            4'd0:    sevenSeg = 7'b111_1110;
            4'd1:    sevenSeg = 7'b011_0000; 
            4'd2:    sevenSeg = 7'b110_1101; 
            4'd3:    sevenSeg = 7'b111_1001; 
            4'd4:    sevenSeg = 7'b011_0011; 
            4'd5:    sevenSeg = 7'b101_1011; 
            4'd6:    sevenSeg = 7'b001_1111; 
            4'd7:    sevenSeg = 7'b111_0000; 
            4'd8:    sevenSeg = 7'b111_1111; 
            4'd9:    sevenSeg = 7'b111_0011; 
            default: sevenSeg = 7'b000_0000; 
            
        endcase
    end
endmodule