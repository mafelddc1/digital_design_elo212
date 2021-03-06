`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 14.05.2020 15:38:48
// Design Name:
// Module Name: counter_4bit
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


module counter_N #(parameter N=4)(
    input  logic          clk, reset,
    output logic [N-1:0]  count
    );

    always_ff @(posedge clk) begin
        if (reset) begin
            count <= 'b0;
        end
        else begin
            count <= count+1;
        end
    end
endmodule
