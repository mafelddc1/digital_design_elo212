`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 15.05.2020 15:00:00
// Design Name:
// Module Name: tb_fib_rec
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


module tb_BCD_to_sevenSeg();
    /*
        Cosas que tienes que corregir
        - El largo del vector de tests
        - La cantidad de bits de cada test (IN + OUT)
        - Si la salida es un vector, corrige el tipo de dato de 'expected'.
        - En el canto de subida, el ajuste de las entradas
        - El periodo del reloj, recuerda que para el canto de bajada la salida ya debe estar estable
        -
    */

    parameter testvector_length = 20;
    parameter testvector_name = "BCD_to_sevenSeg.mem";
    parameter testvector_bits = 11;

    // Variables del simulador
    logic                       clk, reset;
    logic [6:0]                 expected;
    logic [31:0]                vectornum, errors;
    logic [testvector_bits-1:0] testvector [testvector_length-1:0];

    // Variables del DUT
    logic [3:0]  BCD_in;
    logic [6:0]  y;

    fib_rec DUT(
            .BCD_in(BCD_in), .sevenSeg(y));

    // Reloj, ajusta el periodo
    always begin
        clk = ~clk;
        #5;
    end

    // Obtención de datos, revisa instrucciones.md para ver como agregar el archivo al workspace
    initial begin

        $readmemb(testvector_name, testvector);
        vectornum = 0;
        errors = 0;
        reset = 1;
        clk = 0;

        #10;
        reset = 0;

    end

    // Canto Subida -> Actualizar entrada
    // Recuerda ajustar las señales de entrada y salida.
    always @(posedge clk) begin
        #1;
        {BCD_in, expected} = testvector[vectornum];
    end

    // Canto Bajada -> Revisar salida
    // Esto debería ser editado para ajustarse a los otros módulos, pero perfectamente puede quitarse.
    always @(negedge clk) begin
        if (~reset) begin
            $display("%t: BCD_in = %d, y = %b, expected = %b", $realtime, BCD_in, y, expected);

            if (y !== expected) begin
                $error("Error: Cuando BCD_in = %d, y = %b y no %b", BCD_in, y, expected);
                errors = errors + 1;
            end

            vectornum = vectornum + 1;

            if (testvector[vectornum] === {testvector_bits{1'bx}}) begin
                $display("La verificación culmina con");
                $display("%d tests y",vectornum);
                $display("%d errores", errors);
                $finish;
            end
        end
    end

endmodule
