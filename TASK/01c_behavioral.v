module gates_behavioral(
input a, b,
output reg andGate, orGate, notGate, nandGate, norGate, xorGate, xnorGate);
always @(*) begin
andGate = a & b;
orGate = a | b;
notGate = ~a;
nandGate = ~(a & b);
norGate = ~(a | b);
xorGate = a ^ b;
xnorGate = ~(a ^ b);
end
Endmodule
