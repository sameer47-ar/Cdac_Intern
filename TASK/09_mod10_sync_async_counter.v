module mod10_sync_counter (
input clk, reset,
output reg [3:0] count
);
always @(posedge clk or posedge reset) begin
if (reset)
count <= 4'b0000;
else if (count == 4'b1001)
count <= 4'b0000;
else
count <= count + 1;
end
endmodule

module mod10_async_counter (
input clk, reset,
output reg [3:0] count
);
always @(posedge clk or posedge reset) begin
if (reset)
count <= 4'b0000;
else begin
count <= count + 1;
if (count == 4'b1001)
count <= 4'b0000;
end
end
endmodule
