module gates_dataflow(
input a, b,
output andGate, orGate, notGate, nandGate, norGate, xorGate, xnorGate);
assign andGate = a & b;
assign orGate = a | b;
assign notGate = ~a;
assign nandGate = ~(a & b);
assign norGate = ~(a | b);
assign xorGate = a ^ b;
assign xnorGate = ~(a ^ b);
endmodule
