 module exp3_2(
    input clk,
//	 output reg hassetnum,
	 input [3:0] KEY_R,
	 input clr,
	 input flag1,
	 input flag2,
	 input en,
	 output wire flag3,
	 output [3:0] KEY_C = 4'b0111,
	 output reg[15:0]ans,
	 output reg[8:0] a,
	 output reg[7:0] b,
	 output reg[7:0] c,
	 output reg[3:0] cr_reg,
	 output wire[31:0] N,
	 output [7:0] codeout,
	 output [2:0] sel =3'b000,
	 output wire [2:0] pt
);
wire [7:0] X,Y;
wire [15:0] key_out;
keymodule km(.clk(clk),.KEY_R(KEY_R),.clr(clr),.KEY_C(KEY_C),.out(key_out)
//,.press_times(pt)
);
midware (key_out,X,Y);
assign flag3=flag1^flag2;
assign N={X,Y,ans};
segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel));
initial
begin
//	hassetnum<=1'b0;
	cr_reg<=4'b0000;
end
always @(posedge clk) 
begin
	if(en)
	begin
	
	
	 if(cr_reg==4'b0000)
	 begin
		a<=0;
		b<=X[7:0];
		c<=Y[7:0];
//		hassetnum<=1'b1;
		cr_reg<=4'b0001;
	 end
	 else
	 begin
			if(cr_reg==4'b1001)
			begin 
				ans<={a[7:0],c};
				cr_reg<=4'b0000;
			end
			else
			begin
				if(c&1)
				begin
					a=a+{1'b0,b};
				end
				c={a&1,c[7:1]};
				a=a>>1;
				cr_reg<=cr_reg+1;
			end
	 end
	 
	 end
//	 else
//	 begin
//		hassetnum<=1'b0;
//	 end
end
endmodule
