`timescale 10ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ComDev Home Hobby desiden
// Engineer: Titov Michael
// 
// Create Date:	10:00:00 02/16/2017 
// Design Name: 	test QuadratureEncoder and F-meter and 7-Seg x 20-digits Led
// Module Name:	runled 
// Project Name: 	runled
// Target Devices:	XC6SLX9-2tqg144
// Tool versions: 1.0.2
// Description:	
//
// Dependencies: 7-Seg indicator E40561-L-0-8-W drived by ULN2003
//               Xilinx ISE 14.7 nt64 2013 (P.20131013)
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//	reg [31:0]	countX;
//	reg [31:0]	countY;
//	assign countx = countX;
//	assign county = countX;


/* XILINX SPARTAN-6 XC6SLX9-TQG144 FPGA 
	Macet 20 x 7Seg,
	2 x (Encoder + switch),
	6-Led circle*/
module runled(
	f_clk_1,
	f_clk_2,
	clk_25MHz,
	nreset,
	encoda,
	encodb,
	encodAsw,
	encodBsw,
	KEY1,
	KEY2,
	leds,
	digit,
	digseg,
	ledcir
	);

	input 	f_clk_1; // delete assign f_clk = clk_25MHz;
	input 	f_clk_2; // delete assign f_clk = clk_25MHz;
	input 	clk_25MHz;
	input		nreset;
	input		[1:0] encoda;
	input		[1:0] encodb;
	input		encodAsw;
	input		encodBsw;
	input		KEY1;
	input		KEY2;
	output	[7:0] leds;
	output	[19:0] digit;
	output	[7:0] digseg;
	output	[5:0] ledcir;

	// Input
	wire	clk_25MHz;
	wire	f_clk_1;
	wire	f_clk_2;
	wire	nreset;
	wire	[1:0] encoda;
	wire	[1:0] encodb;
	wire	encodAsw;
	wire	encodBsw;
	wire	KEY1;
	wire	KEY2;
	// Output
	wire [7:0]		leds;
	wire [19:0]		digit;
	wire [7:0]		digseg;
	wire [5:0]		ledcir;

	reg	[7:0]		digseg_r;
	reg	[5:0]		ledcir_r;
	reg	[19:0]	digit_r;
	reg	[7:0]		leds_r;

	reg	[3:0]		digg;	
	reg	[3:0]		dig_r [0:19];
	wire	[3:0]		dig_w [0:19];
	
	reg	[3:0]		cdig;	
	reg	[31:0]	countx_r;
	reg	[31:0]	county_r;
	reg	[31:0]	countx_i;
	reg	[31:0]	county_i;
	reg	[31:0]	count;
	reg	[31:0]	count_time;
	reg	[31:0]	f_count_a;
	reg	[31:0]	f_count_b;
	reg	[31:0]	f_count_a_b;
	reg	[31:0]	f_count_b_b;
	reg	[5:0]		cntdig;
	reg	[4:0]		test_cnt;
	reg	[2:0]		ledcir_cnt;
	reg				poin;
	reg	[19:0]	ppoint;
	reg	[3:0]		count_mode;

	reg	[1:0] 	bfab;
	reg	[1:0] 	pfab;
	reg				dira;
	reg	[1:0] 	bfbb;
	reg	[1:0] 	pfbb;
	reg				dirb;
	reg	[9:0] 	cntfa;
	reg	[9:0] 	cntfb;
	reg	[9:0] 	cntfasw;
	reg	[9:0] 	cntfbsw;
	reg				cntfasw_stat;
	reg				cntfbsw_stat;
	reg				cntfasw_b;
	reg				cntfbsw_b;
	reg	[3:0]		modea;
	reg	[3:0]		modeb;
	reg	[19:0]	cntshow;
	reg				set_mes1;
	reg				set_mes2;
	
	parameter 		cntf_max = 10'd80;
	
	initial
	begin
		cntfasw_stat   = 1'b1;
		cntfasw_b		= 1'b1;
		cntfasw        = 10'd0;
		cntfbsw_stat   = 1'b1;
		cntfbsw_b		= 1'b1;
		cntfbsw        = 10'd0;
		set_mes1 = 1'b0;
		set_mes2 = 1'b0;
		leds_r = 8'd1;
		count = 32'd0;
		countx_r = 32'd0;
		county_r = 32'd0;
		countx_i = 32'd0;
		county_i = 32'd0;
		test_cnt = 5'd0;
		ledcir_cnt = 3'd0;
		count_time = 32'd0;
		poin = 0;
		ppoint = 20'b1000_0000_0100_0000_0001;
		pfab = 2'b11;
		pfbb = 2'b11;
		modea = 4'd1;
		modeb = 4'd1;
		f_count_a = 32'd0;
		f_count_b = 32'd0;
		ledcir_r = 6'b00_0000;
		digit_r = 20'b0000_0000_0000_0000_0001;
		digseg_r = ~8'b0000_0000;
	end
	
	assign leds   = leds_r;
	assign ledcir = ledcir_r;
	assign digseg = digseg_r;
	assign digit  = digit_r;
	
	always @(posedge f_clk_1 or posedge set_mes1 or posedge set_mes2)// or posedge set_mes1 or posedge set_mes2)
	begin			
	   if(set_mes1)
			begin
				if(modea == 1) 
					f_count_a_b = f_count_a;
			end
		else
	   if(set_mes2)
			f_count_a = 32'd0;
		else
		if(f_count_a[3:0] == 4'd9)
		begin
			f_count_a[3:0] = 4'd0;
			if(f_count_a[7:4] == 4'd9)
			begin
				f_count_a[7:4] = 4'd0;
				if(f_count_a[11:8] == 4'd9)
				begin
					f_count_a[11:8] = 4'd0;
					if(f_count_a[15:12] == 4'd9)
					begin
						f_count_a[15:12] = 4'd0;
						if(f_count_a[19:16] == 4'd9)
						begin
							f_count_a[19:16] = 4'd0;
							if(f_count_a[23:20] == 4'd9)
							begin
								f_count_a[23:20] = 4'd0;
								if(f_count_a[27:24] == 4'd9)
								begin
									f_count_a[27:24] = 4'd0;
									if(f_count_a[31:28] != 4'd9)
										f_count_a[31:28] = f_count_a[31:28] + 1'b1;
								end
								else
								f_count_a[27:24] = f_count_a[27:24] + 1'b1;
							end
							else
							f_count_a[23:20] = f_count_a[23:20] + 1'b1;
						end
						else
						f_count_a[19:16] = f_count_a[19:16] + 1'b1;
					end
					else
					f_count_a[15:12] = f_count_a[15:12] + 1'b1;
				end
				else
				f_count_a[11:8] = f_count_a[11:8] + 1'b1;
			end
			else
			f_count_a[7:4] = f_count_a[7:4] + 1'b1;
		end
		else
		f_count_a[3:0] = f_count_a[3:0] + 1'b1;
	end
				
	always @(posedge f_clk_2 or posedge set_mes1 or posedge set_mes2)// or posedge set_mes1 or posedge set_mes2)
	begin
		if(set_mes1)
			begin
				if(modeb == 1) 
					f_count_b_b = f_count_b; //countx_i = f_count_b;
			end
		else
	   if(set_mes2)
			f_count_b = 32'd0;
		else
		if(f_count_b[3:0] == 4'd9)
		begin
			f_count_b[3:0] = 4'd0;
			if(f_count_b[7:4] == 4'd9)
			begin
				f_count_b[7:4] = 4'd0;
				if(f_count_b[11:8] == 4'd9)
				begin
					f_count_b[11:8] = 4'd0;
					if(f_count_b[15:12] == 4'd9)
					begin
						f_count_b[15:12] = 4'd0;
						if(f_count_b[19:16] == 4'd9)
						begin
							f_count_b[19:16] = 4'd0;
							if(f_count_b[23:20] == 4'd9)
							begin
								f_count_b[23:20] = 4'd0;
								if(f_count_b[27:24] == 4'd9)
								begin
									f_count_b[27:24] = 4'd0;
									if(f_count_b[31:28] != 4'd9)
									f_count_b[31:28] = f_count_b[31:28] + 1'b1;
								end
								else
								f_count_b[27:24] = f_count_b[27:24] + 1'b1;
							end
							else
							f_count_b[23:20] = f_count_b[23:20] + 1'b1;
						end
						else
						f_count_b[19:16] = f_count_b[19:16] + 1'b1;
					end
					else
					f_count_b[15:12] = f_count_b[15:12] + 1'b1;
				end
				else
				f_count_b[11:8] = f_count_b[11:8] + 1'b1;
			end
			else
			f_count_b[7:4] = f_count_b[7:4] + 1'b1;
		end
		else
		f_count_b[3:0] = f_count_b[3:0] + 1'b1;
	end
	
	always @(posedge clk_25MHz or negedge nreset)
	begin
		if(!nreset)
		begin
			countx_r = 32'd0;
			county_r = 32'd0;
			leds_r	= 8'b0000_0001;
			test_cnt = 5'd0;
			cntfa		= 9'd0;
			cntfb		= 9'd0;
			count_time = 32'd0;
			pfab = 2'b11;
			pfbb = 2'b11;
		end
		else
		begin
		   ppoint[0] = 1'b0;
		   ppoint[4:1] = modea;
		   ppoint[8:5] = modeb;
			ppoint[9]  = f_clk_1;
			ppoint[10] = f_clk_2;
			ppoint[11] = KEY1;
			ppoint[12] = KEY2;
			ppoint[13] = count[15];
			ppoint[14] = encoda[0];
			ppoint[15] = encoda[1];
			ppoint[16] = encodAsw;
			ppoint[17] = encodb[0];
			ppoint[18] = encodb[1];
			ppoint[19] = encodBsw;
			
			if((modea == 0) && (!set_mes1)) countx_i = countx_r;
			if((modeb == 0) && (!set_mes1)) county_i = county_r;
			
//			if(count_time == 25_000_000 + 1)
			if(count_time == 25_000_000 + 1)
//			if(count_time == 200) //25_000_000) // debug !!!
			begin
				if(set_mes2 == 1'b1)
				begin
					set_mes2 = 1'b0;
					count_time = 32'd0;
				end
				else
				if(set_mes1 == 1'b0)
					set_mes1 = 1'b1;
				else
				if(set_mes1 == 1'b1)
				begin
					set_mes1 = 1'b0;
					set_mes2 = 1'b1;
					if(modea == 1)		countx_i = f_count_a_b;
					if(modeb == 1)		county_i = f_count_b_b;
				end
			end
			else 
				count_time = count_time + 1'b1;
				
			if(cntfasw_b != encodAsw)
				begin
					cntfasw_b    = encodAsw;
					cntfasw      = cntf_max;
				end
			else
			begin
				if(cntfasw != 0)
					cntfasw = cntfasw - 1'b1;
				else
				begin
					if(cntfasw_stat != cntfasw_b)
					begin
						cntfasw_stat = cntfasw_b;
						if(cntfasw_b == 0)
							if(modea < 1) modea = modea + 1'b1;
							else modea = 4'd0;
						if(modea == 4'b1) set_mes1 = 1'b1;
					end
				end
			end
			
			if(cntfbsw_b != encodBsw)
				begin
					cntfbsw_b    = encodBsw;
					cntfbsw      = cntf_max;
				end
			else
			begin
				if(cntfbsw != 0)
					cntfbsw = cntfbsw - 1'b1;
				else
				begin
					if(cntfbsw_stat != cntfbsw_b)
					begin
						cntfbsw_stat = cntfbsw_b;
						if(cntfbsw_b == 0)
							if(modeb < 1)
								modeb = modeb + 1'b1;
							else modeb = 4'd0;
							if(modeb == 4'b1) set_mes1 = 1'b1;
					end
				end
			end
			
			if(count == (25_000_000/10_000 + 1))
//			if(count == 60) // 25_000_000/10_000) // debug !!!
			begin
				count = 0;
				if(cntshow == 2500)
//				if(cntshow == 5) // 2500) // debug !!!
				begin
					if(leds_r == 8'b1000_0000) leds_r = 8'b0000_0001;
					else                       leds_r = leds_r << 1;
					if(ledcir_cnt >= 5)	ledcir_cnt = 3'd0;
					else	  ledcir_cnt = ledcir_cnt + 3'd1;
					cntshow = 20'd0;
				end
				else
				cntshow = cntshow + 1'b1;
				
				if(test_cnt >= 19)  test_cnt = 0;
				else test_cnt =  test_cnt + 1'b1;
				
				case(ledcir_cnt)
					3'h0: ledcir_r = 6'b00_0111;
					3'h1: ledcir_r = 6'b00_1110;
					3'h2: ledcir_r = 6'b01_1100;
					3'h3: ledcir_r = 6'b11_1000;
					3'h4: ledcir_r = 6'b11_0001;
					3'h5: ledcir_r = 6'b10_0011;
					default: ledcir_r = 6'b00_0000;
				endcase
				
				case(test_cnt)
					5'h00: digit_r = 20'b0000_0000_0000_0000_0001;
					5'h01: digit_r = 20'b0000_0000_0000_0000_0010;
					5'h02: digit_r = 20'b0000_0000_0000_0000_0100;
					5'h03: digit_r = 20'b0000_0000_0000_0000_1000;
					
					5'h04: digit_r = 20'b0000_0000_0000_0001_0000;
					5'h05: digit_r = 20'b0000_0000_0000_0010_0000;
					5'h06: digit_r = 20'b0000_0000_0000_0100_0000;
					5'h07: digit_r = 20'b0000_0000_0000_1000_0000;
					
					5'h08: digit_r = 20'b0000_0000_0001_0000_0000;
					5'h09: digit_r = 20'b0000_0000_0010_0000_0000;
					5'h0A: digit_r = 20'b0000_0000_0100_0000_0000;
					5'h0B: digit_r = 20'b0000_0000_1000_0000_0000;
					
					5'h0C: digit_r = 20'b0000_0001_0000_0000_0000;
					5'h0D: digit_r = 20'b0000_0010_0000_0000_0000;
					5'h0E: digit_r = 20'b0000_0100_0000_0000_0000;
					5'h0F: digit_r = 20'b0000_1000_0000_0000_0000;
					
					5'h10: digit_r = 20'b0001_0000_0000_0000_0000;
					5'h11: digit_r = 20'b0010_0000_0000_0000_0000;
					5'h12: digit_r = 20'b0100_0000_0000_0000_0000;
					5'h13: digit_r = 20'b1000_0000_0000_0000_0000;
					default: digit_r = 20'b000_0000_0000_0000_0000;
				endcase
				
				case(test_cnt)
					5'h00: cdig = countx_i[31:28];
					5'h01: cdig = countx_i[27:24];
					5'h02: cdig = countx_i[23:20];
					5'h03: cdig = countx_i[19:16];
					
					5'h04: cdig = countx_i[15:12];
					5'h05: cdig = countx_i[11:8];
					5'h06: cdig = countx_i[7:4];
					5'h07: cdig = countx_i[3:0];
					
					5'h08: cdig = count[31:28];
					5'h09: cdig = count[27:24];
					5'h0A: cdig = modea[3:0];
					5'h0B: cdig = modeb[3:0];
					
					5'h0C: cdig = county_i[31:28];
					5'h0D: cdig = county_i[27:24];
					5'h0E: cdig = county_i[23:20];
					5'h0F: cdig = county_i[19:16];
					
					5'h10: cdig = county_i[15:12];
					5'h11: cdig = county_i[11:8];
					5'h12: cdig = county_i[7:4];
					5'h13: cdig = county_i[3:0];
					default: cdig = 4'b1111;
				endcase
				
				case(cdig)
					4'h0: digseg_r[6:0] = ~7'b100_0000;
					4'h1: digseg_r[6:0] = ~7'b111_1001;
					4'h2: digseg_r[6:0] = ~7'b010_0100;
					4'h3: digseg_r[6:0] = ~7'b011_0000;
					4'h4: digseg_r[6:0] = ~7'b001_1001;
					4'h5: digseg_r[6:0] = ~7'b001_0010;
					4'h6: digseg_r[6:0] = ~7'b000_0010;
					4'h7: digseg_r[6:0] = ~7'b111_1000;
					4'h8: digseg_r[6:0] = ~7'b000_0000;
					4'h9: digseg_r[6:0] = ~7'b001_0000;
					4'hA: digseg_r[6:0] = ~7'b000_1000;
					4'hB: digseg_r[6:0] = ~7'b000_0011;
					4'hC: digseg_r[6:0] = ~7'b100_0110;
					4'hD: digseg_r[6:0] = ~7'b010_0001;
					4'hE: digseg_r[6:0] = ~7'b000_0110;
					4'hF: digseg_r[6:0] = ~7'b000_1110;
					default: digseg_r[6:0] = ~7'b000_0000;
				endcase
				digseg_r[7] = ppoint[test_cnt]; 

				bfab = encoda;
				if((pfab != bfab) && (cntfa != 0))
					cntfa = cntfa - 9'd1;
				else
				if((pfab == bfab) && (cntfa != 0))
					cntfa = cntf_max;
				else
				begin
					if(bfab == 0)
						if(pfab == 1)	dira = 1'b1;
						else				dira = 1'b0;
					else
					if(bfab == 1)
						if(pfab == 3)	dira = 1'b1;
						else				dira = 1'b0;
					else
					if(bfab == 2)
						if(pfab == 0)	dira = 1'b1;
						else				dira = 1'b0;
					else
					if(bfab == 3)
						if(pfab == 2)	dira = 1'b1;
						else 				dira = 1'b0;
					pfab = bfab;
					if(modea == 0)
					begin
						if(dira)	countx_r = countx_r - 1'd1; 
						else		countx_r = countx_r + 1'd1;
					end
					cntfa = cntf_max;
				end

				bfbb = encodb;
				if((pfbb != bfbb) && (cntfb != 0))
					cntfb = cntfb - 9'd1;
				else
				if((pfbb == bfbb) && (cntfb != 0))
					cntfb = cntf_max;
				else
				begin
					if(bfbb == 0)
						if(pfbb == 1)	dirb = 1'b1;
						else				dirb = 1'b0;
					else
					if(bfbb == 1)
						if(pfbb == 3)	dirb = 1'b1;
						else				dirb = 1'b0;
					else
					if(bfbb == 2)
						if(pfbb == 0)	dirb = 1'b1;
						else				dirb = 1'b0;
					else
					if(bfbb == 3)
						if(pfbb == 2)	dirb = 1'b1;
						else 				dirb = 1'b0;
					pfbb = bfbb;
					if(modeb == 0)
					begin
						if(dirb)	county_r = county_r - 1'd1; 
						else		county_r = county_r + 1'd1; 
					end
					cntfb = cntf_max;
				end

			end
			else
			begin
				count = count + 1;
			end
		end	
	end
endmodule
