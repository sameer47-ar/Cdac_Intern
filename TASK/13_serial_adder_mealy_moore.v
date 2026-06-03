// CASE 1 USING MEALY MACHINE
module serial_adder_mealy (input clk, reset, a, b,
output reg sum
);
parameter S0 = 1'b0, S1 = 1'b1;
reg state, next_state;
always @(posedge clk or posedge reset) begin
if (reset) state <= S0;
else state <= next_state;
end
always @(*) begin
case (state)
S0: begin
sum = a ^ b;
next_state = (a & b) ? S1 : S0;
end
S1: begin
sum = ~(a ^ b);
next_state = (a | b) ? S1 : S0;
end
endcase
end
endmodule

// CASE 2 SERIAL ADDER USING MOORE
module serial_adder_moore(input clk,reset, a,b,
output reg sum
);
reg [1:0] state,next_state;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
always @(posedge clk or posedge reset) begin
if (reset) state <= S0;
else state <= next_state;
end
always @(*) begin
case (state)
S0,S1: begin
if (a & b) next_state = S2;
else if (a ^ b) next_state = S1;
else next_state = S0;
end
S2,S3: begin
if (a & b) next_state = S3;
else if (a ^ b) next_state = S2;
else next_state = S1;
end
endcase
end
always @(*) begin
case (state)
S0,S2: sum = 1'b0;
S1,S3: sum = 1'b1;
endcase
end
endmodule
