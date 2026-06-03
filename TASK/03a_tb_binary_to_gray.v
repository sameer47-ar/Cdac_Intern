module tb;
reg [3:0] b;
wire [3:0] gray;
b_to_gray DUT (.b(b),.gray(gray));
initial
begin
b = 4'b0000; #10;
b = 4'b0001; #10;
b = 4'b0010; #10;
b = 4'b0011; #10;
b = 4'b0100; #10;
b = 4'b0101; #10;
b = 4'b0110; #10;
b = 4'b0111; #10;
b = 4'b1000; #10;
b = 4'b1001; #10;
b = 4'b1010; #10;
b = 4'b1011; #10;
b = 4'b1100; #10;
$finish;
end
initial
begin
$monitor("%b %b", b, gray);
end
endmodule
