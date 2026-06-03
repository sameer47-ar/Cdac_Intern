// A) SR Flip-Flop
module sr_ff (input S, R, clk,
output reg Q, Q_bar
);
always @(posedge clk) begin
case ({S,R})
2'b00: Q <= Q; // Hold
2'b01: Q <= 0; // Reset
2'b10: Q <= 1; // Set
2'b11: Q <= 1'bx; // Invalid
endcase
end
assign Q_bar = ~Q;
endmodule

// B) D Flip-Flop
module d_ff (
input D,
input clk,
output reg Q,
output Q_bar
);
always @(posedge clk)
Q <= D;
assign Q_bar = ~Q;
endmodule

// JK Flip-Flop
module jk_ff ( input J, K, clk,
output reg Q,Q_bar);
always @(posedge clk) begin
case ({J,K})
2'b00: Q <= Q;
2'b01: Q <= 0;
2'b10: Q <= 1;
2'b11: Q <= ~Q;
endcase
end
assign Q_bar = ~Q;
Endmodule

// T Flip-Flop
module t_ff (input T,clk,
output reg Q, Q_bar
);
always @(posedge clk) begin
if (T)
Q <= ~Q;
else
Q <= Q;
end
assign Q_bar = ~Q;
endmodule

// D Flip-Flop using T Flip-Flop
module d_ff (
input D, clk,
output Q
);
t_ff t1 (.T(T), .clk(clk), .Q(Q));
wire T;
assign T = D ^ Q;
endmodule

// JK Flip-Flop using T Flip-Flop
module jk_ff( input J, K, clk,
output Q);
wire T;
t_ff t1 (.T(T),.clk(clk), .Q(Q));
assign T = (J & ~Q) | (~K & Q);
endmodule

// SR Flip-Flop using T Flip-Flop
module sr_using_t (
input S,
input R,
input clk,
output Q
);
t_ff t1 (.T(T),.clk(clk), .Q(Q));
wire T;
assign T = (S & ~Q) | (R & Q);
endmodule
