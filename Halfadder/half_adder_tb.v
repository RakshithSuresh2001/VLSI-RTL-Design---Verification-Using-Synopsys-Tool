`include "half_adder.v"
//TB FOR HALF ADDER
module  top();
//ports decalartion
reg a,b;
wire sum,carry;
//instansation  of RTL
half_adder dut (a,b,sum,carry);

//generate the stimulas
initial begin
	repeat(10)begin
		{a,b}=$random;
		#1;
		$display("\t a=%0d b=%0d sum=%0d carry=%0d \n",a,b,sum,carry);
	end
end
initial begin
	$fsdbDumpfile("half_adder.fsdb");
	$fsdbDumpvars(0,top);
end
endmodule

