module half_adder(
input A, B,
output Sum, Carry
);
assign Sum = A ^ B;
assign Carry = A & B;
Endmodule

module full_adder(
input A, B, Cin,
output Sum, Cout
);
assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

module half_subtractor(
input A, B,
output Diff, Borrow
);
assign Diff = A ^ B;
assign Borrow = (~A) & B;
endmodule

module full_subtractor(
input A, B, Bin,
output Diff, Bout
);
assign Diff = A ^ B ^ Bin;
assign Bout = (~A & B) | (B & Bin) | (~A & Bin);
endmodule
