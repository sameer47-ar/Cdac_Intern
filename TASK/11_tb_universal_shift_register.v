module tb;
reg clk;
reg reset;
reg [1:0] sel;
reg [3:0] parallel_in;
reg serial_left;
reg serial_right;
wire [3:0] q;
universal_shift_register uut (.clk(clk), .reset(reset), .sel(sel), .parallel_in(parallel_in),
.serial_left(serial_left), .serial_right(serial_right), .q(q));
always #5 clk = ~clk;
initial
$monitor("Time=%0t | sel=%b | parallel_in=%b | serial_left=%b | serial_right=%b | q=%b",
$time, sel, parallel_in, serial_left, serial_right, q);
initial
begin
clk = 0;
reset = 1;
sel = 2'b00;
parallel_in = 4'b0000;
serial_left = 0;
serial_right = 0;
#10 reset = 0;
sel = 2'b11;
parallel_in = 4'b1011;
#10;
sel = 2'b00;
#20;
sel = 2'b01;
serial_right = 1;
#10;
serial_right = 0;
#10;
serial_right = 1;
#10;
sel = 2'b10;
serial_left = 0;
#10;
serial_left = 1;
#10;
serial_left = 0;
#10;
#20 $finish;
end
endmodule
