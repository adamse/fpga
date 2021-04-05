module Top (
  input clk,
  output [15:0] led,
  input [15:0] sw
);

wire rst;

mkTop main(
  .CLK(clk),
  .RST_N(rst),
  .leds_leds(led),
  .switches_switches_1(sw)
);

assign rst = 1;

endmodule
