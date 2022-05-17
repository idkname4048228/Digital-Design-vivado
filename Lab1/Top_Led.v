`timescale 1ns / 10ps
module Top_Led(	
		input sys_clk_in,
		input sys_rst_n,
		output [7:0] led
	);
	
	wire clock;
	reg [7:0] led_show = 8'b00000001;
	
	Divider_Clock #(
		.Custom_Outputclk_0(),
		.Custom_Outputclk_1(),
		.Custom_Outputclk_2()
	)u_Divider_Clock(
		.clkin(sys_clk_in),
		.rst_n(sys_rst_n),
		.clkout_1K(),
		.clkout_100(),
		.clkout_10(),
		.clkout_1(clock),
		.clkout_Custom_0(),
		.clkout_Custom_1(),
		.clkout_Custom_2()
	);

	always@(posedge clock or negedge sys_rst_n)begin
		if(!sys_rst_n) 
			led_show <= 8'b00000000;
		else begin	
			case(led_show[7])
				1'b0:
					led_show <= led_show << 1;
				1'b1:
					led_show <=  8'b00000001;
				default	:	
					led_show <=  8'b00000000;
			endcase	
		end	
	end
	
	assign led = led_show; 
	
endmodule	