module Top (
  input clk,
  output [15:0] led
);

wire rst;

mkTop main(.CLK(clk), .RST_N(rst), .leds_leds(led));

assign rst = 0;

endmodule

