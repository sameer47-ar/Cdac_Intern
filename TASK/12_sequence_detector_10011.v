// MEALY OVERLAPPING 10011
module mealy_overlapping(input clk, reset, din,
output reg dout
);
typedef enum logic [2:0] {A,B,C,D,E} state_t;
state_t state,next;
always @(posedge clk or posedge reset)
begin
if(reset)
state <= A;
else
state <= next;
end
always @(*)
begin
dout = 0;
case(state)
A: next = (din)? B:A;
B: next = (din)? B:C;
C: next = (din)? B:D;
D: next = (din)? E:A;
E:
begin
if(din)
begin
dout = 1;
next = B;
end
else
next = C;
end
endcase
end
endmodule

// MEALY NON OVERLAPPING 10011
module mealy_Non_overlap(
input clk,
input reset,
input din,
output reg dout
);
typedef enum logic [2:0] {A,B,C,D,E} state_t;
state_t state,next;
always @(posedge clk or posedge reset)
begin
if(reset)
state <= A;
else
state <= next;
end
always @(*)
begin
dout = 0;
case(state)
A: next = (din)? B:A;
B: next = (din)? B:C;
C: next = (din)? B:D;
D: next = (din)? E:A;
E:
begin
if(din)
begin
dout = 1;
next = A;
end
else
next = C;
end
endcase
end
endmodule

// MOORE OVERLAPPING 10011
module moore_overlap(
input clk,
input reset,
input din,
output reg dout
);
typedef enum logic [2:0] {A,B,C,D,E,F} state_t;
state_t state,next;
always @(posedge clk or posedge reset)
begin
if(reset)
state <= A;
else
state <= next;
end
always @(*)
begin
case(state)
A: next = (din)? B:A;
B: next = (din)? B:C;
C: next = (din)? B:D;
D: next = (din)? E:A;
E: next = (din)? F:C;
F: next = (din)? B:C;
endcase
end
always @(*)
begin
if(state == F)
dout = 1;
else
dout = 0;
end
endmodule

// MOORE NON OVERLAPPING 10011
module moore_Non_overlap(
input clk,
input reset,
input din,
output reg dout
);
typedef enum logic [2:0] {A,B,C,D,E,F} state_t;
state_t state,next;
always @(posedge clk or posedge reset)
begin
if(reset)
state <= A;
else
state <= next;
end
always @(*)
begin
case(state)
A: next = (din)? B:A;
B: next = (din)? B:C;
C: next = (din)? B:D;
D: next = (din)? E:A;
E: next = (din)? F:C;
F: next = (din)? B:A;
endcase
end
always @(*)
begin
if(state == F)
dout = 1;
else
dout = 0;
end
endmodule
