//-----testbench of ts_7dm----


`timescale 1ns/10ps
module ts_7dm_tb;
reg[3:0]	num1;
wire[6:0]	a_g1;


ts_7dm	ts_7dm(
		.num(num1),
		.a_g(a_g1)
		);
initial begin
		num1<=0;
	#200	$stop;
      
end

 always #10 num1<=num1+1;//变历所以情况；

initial begin
	$dumpfile("test7.vcd");
	$dumpvars(0,ts_7dm_tb);
end


endmodule
