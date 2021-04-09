module Top (
  input clk,
  output [15:0] led,
  input [15:0] sw,
  output [6:0] seg,
  output dp,
  output [3 : 0] an
);

wire rst;

mkTop main(
  .CLK(clk),
  .RST_N(rst),
  .leds(led),
  .switches_1(sw),
  .seven_segment_seg(seg),
  .seven_segment_dp(dp),
  .seven_segment_an(an)
);

assign rst = 1;

endmodule
