// A) SR Latch
module sr_latch (
input s,
input r,
input en,
output reg q
);
always @(s, r, en) begin
if (en) begin
case ({s, r})
2'b01: q <= 1'b0;
2'b10: q <= 1'b1;
2'b11: q <= 1'bx;
default: q <= q;
endcase
end
end
endmodule

// B) D Latch
module d_latch (
input d,
input en,
output reg q
);
always @(d, en) begin
if (en)
q <= d;
end
Endmodule

// C) JK Latch
module jk_latch (
input j,
input k,
input en,
output reg q
);
always @(j, k, en) begin
if (en) begin
case ({j, k})
2'b01: q <= 1'b0;
2'b10: q <= 1'b1;
2'b11: q <= ~q;
default: q <= q;
endcase
end
end
endmodule

// D) T Latch
module t_latch (
input t,
input en,
output reg q
);
always @(t, en) begin
if (en) begin
if (t)
q <= ~q;
else
q <= q;
end
end
endmodule
