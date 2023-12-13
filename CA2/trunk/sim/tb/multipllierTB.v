`timescale 1ps/1ps
module multiplierTB();
    reg [31:0] a, b;
    wire [63:0] product;

    multiplier #(32) U1 (.x(a), .y(b), .z(product));

    initial begin

        a = 32'd24; // 3
        b = 32'd47; // 5

        #10;

        a = 32'd11; // 15
        b = 32'd1; // 10

        #10;

        $finish;
    end
endmodule
