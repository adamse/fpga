module Top (
  input clk,
  output [15:0] led,
  input [15:0] sw,
  output [6:0] seg,
  output dp,
  output [3 : 0] an,
  input btn_c,
  input btn_u,
  input btn_l,
  input btn_r,
  input btn_d
);

wire rst;

mkTop main(
  .CLK(clk),
  .RST_N(rst),
  .leds(led),
  .switches_1(sw),
  .seven_segment_seg(seg),
  .seven_segment_dp(dp),
  .seven_segment_an(an),
  .buttons_bup_1(btn_u),
  .buttons_bleft_1(btn_l),
  .buttons_bright_1(btn_r),
  .buttons_bdown_1(btn_d)
);

assign rst = !btn_c;

endmodule
