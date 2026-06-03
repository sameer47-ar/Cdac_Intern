module tb;
reg A,B,Cin,Bin;
wire Sum,Carry;
wire Sum_f,Cout;
wire Diff,Borrow;
wire Diff_f,Bout;
half_adder HA(A,B,Sum,Carry);
full_adder FA(A,B,Cin,Sum_f,Cout);
half_subtractor HS(A,B,Diff,Borrow);
full_subtractor FS(A,B,Bin,Diff_f,Bout);
initial
begin
A=0;B=0;Cin=0;Bin=0; #10;
A=0;B=1;Cin=0;Bin=1; #10;
A=1;B=0;Cin=1;Bin=0; #10;
A=1;B=1;Cin=1;Bin=1; #10;
$finish;
end
endmodule
