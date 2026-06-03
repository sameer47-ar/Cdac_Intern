module b_to_gray (
input [3:0] b,
output [3:0] gray
);
assign gray[3] = b[3];
assign gray[2] = b[3] ^ b[2];
assign gray[1] = b[2] ^ b[1];
assign gray[0] = b[1] ^ b[0];
endmodule

module gray_to_bin (
input [3:0] gray,
output [3:0] b
);
assign b[3] = gray[3];
assign b[2] = gray[3] ^ gray[2];
assign b[1] = gray[3] ^ gray[2] ^ gray[1];
assign b[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
endmodule
