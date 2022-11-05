//2022-7-23.罗力中；
//7段数码管译码器；
module ts_7dm(num,a_g);
input[3:0]	num;
output[6:0]	a_g;
reg[6:0]	a_g;//a_g[6:0]-->{a,b,c,d,e,f,g}
always@(num) begin
	case(num)
	//4'd0:begin a_g<=7'b111_1110;end //带begin end上可以释放内存
	4'd0:a_g<=7'b111_1110;
	4'd1:a_g<=7'b011_0000;
	4'd2:a_g<=7'b110_1101;
	4'd3:a_g<=7'b111_1100;
	4'd4:a_g<=7'b011_0011;
	4'd5:a_g<=7'b101_1011;
	4'd6:a_g<=7'b101_1111;
	4'd7:a_g<=7'b111_0000;
	4'd8:a_g<=7'b111_1111;
	4'd9:a_g<=7'b111_1011;
	default:a_g<=7'b000_0001;//中杠；
	endcase
end

endmodule	
