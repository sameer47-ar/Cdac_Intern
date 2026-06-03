// 2:1 Multiplexer
module mux2to1 (
input I0, I1,
input S,
output Y
);
assign Y = S ? I1 : I0;
endmodule

// 4:1 MUX (Using 2:1 MUX)
module mux4to1 (
input I0, I1, I2, I3,
input S0, S1,
output Y
);
wire w1, w2;
mux2to1 M1 (I0, I1, S0, w1);
mux2to1 M2 (I2, I3, S0, w2);
mux2to1 M3 (w1, w2, S1, Y);
Endmodule

// 7:1 MUX (Using 2:1 MUX)
module mux7to1 (
input I0,I1,I2,I3,I4,I5,I6,
input S0,S1,S2,
output Y
);
wire w1,w2,w3,w4,w5;
mux2to1 M1 (I0, I1, S0, w1);
mux2to1 M2 (I2, I3, S0, w2);
mux2to1 M3 (I4, I5, S0, w3);
mux2to1 M4 (w1, w2, S1, w4);
mux2to1 M5 (w3, I6, S1, w5);
mux2to1 M6 (w4, w5, S2, Y);
endmodule

// 13:1 MUX (Using 2:1 MUX Only)
module mux13to1 (
input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,
input S0,S1,S2,S3,
output Y
);
wire w1,w2,w3,w4,w5,w6, w7,w8,w9, w10,w11;
mux2to1 M1 (I0,I1,S0,w1);
mux2to1 M2 (I2,I3,S0,w2);
mux2to1 M3 (I4,I5,S0,w3);
mux2to1 M4 (I6,I7,S0,w4);
mux2to1 M5 (I8,I9,S0,w5);
mux2to1 M6 (I10,I11,S0,w6);
mux2to1 M7 (w1,w2,S1,w7);
mux2to1 M8 (w3,w4,S1,w8);
mux2to1 M9 (w5,w6,S1,w9);
mux2to1 M10 (w7,w8,S2,w10);
mux2to1 M11 (w9,I12,S2,w11);
mux2to1 M12 (w10,w11,S3,Y);
endmodule
