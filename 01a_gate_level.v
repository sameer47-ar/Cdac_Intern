`timescale 1ns / 1ps
module GateLevel(
input a, b,
output andGate, orGate, notGate, nandGate, norGate, xorGate, xnorGate);
and (andGate, a, b);
or (orGate, a, b);
not (notGate, a);
nand (nandGate,a, b);
nor (norGate, a, b);
xor (xorGate, a, b);
xnor (xnorGate,a, b);
endmodule
