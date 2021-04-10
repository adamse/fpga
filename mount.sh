#!/bin/bash

sudo mount -t overlay overlay \
  -o lowerdir=/nix/store/zgwyd0lh5z6334ll59qxsxpfx2kayd4r-bluespec-unstable-2021.02.14/lib/Verilog.Vivado/:/nix/store/zgwyd0lh5z6334ll59qxsxpfx2kayd4r-bluespec-unstable-2021.02.14/lib/Verilog/ \
  ./BS-Verilog/
