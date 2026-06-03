module tb_mod10;
reg clk;
reg reset;
wire [3:0] count;
mod10_sync_counter uut (
.clk(clk),
.reset(reset),
.count(count)
);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 1;
#10 reset = 0;
#200 $finish;
end
initial begin
$monitor("Time=%0t Count=%b", $time, count);
end
endmodule
