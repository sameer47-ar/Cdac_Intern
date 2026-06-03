`timescale 1ns / 1ps
module tb;
reg a, b;
wire andGate, orGate, notGate, nandGate, norGate, xorGate, xnorGate;
gates_behavioral DUT (.a(a), .b(b), .andGate(andGate), .orGate(orGate), .notGate(notGate), .nandGate(nandGate), .norGate(norGate), .xorGate(xorGate), .xnorGate(xnorGate)
);
initial begin
$display("A B | AND OR NOT NAND NOR XOR XNOR");
$monitor("%b %b | %b %b %b %b %b %b %b", a, b, andGate, orGate, notGate,
nandGate, norGate, xorGate, xnorGate);
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish;
end
endmodule
