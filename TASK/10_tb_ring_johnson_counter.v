module tb_counter;
reg clk;
reg reset;
wire [3:0] ring_q;
wire [3:0] johnson_q;
ring_counter r1(.clk(clk),.reset(reset),.q(ring_q));
johnson_counter j1(.clk(clk),.reset(reset),.q(johnson_q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 1;
#10 reset = 0;
#100 $finish;
end
initial begin
$monitor("Time=%0t Ring=%b Johnson=%b", $time, ring_q, johnson_q);
end
endmodule
