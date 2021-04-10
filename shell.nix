{ sources ? import nix/sources.nix
, pkgs ? import sources.nixpkgs {}
}:

let
  hs = pkgs.haskellPackages.ghcWithPackages (p: [ p.regex-compat p.syb p.old-time p.split ]);
in

pkgs.mkShell {
  buildInputs = [
    hs
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.pandoc
    pkgs.verilator
    pkgs.verilog
    pkgs.gtkwave
    pkgs.tcl
    pkgs.gperf
    pkgs.autoconf
    pkgs.zlib
    pkgs.gmp
    pkgs.screen
    pkgs.picocom
    pkgs.bluespec
  ];
  XRAY_VIVADO_SETTINGS = "/home/adam/opt/Xilinx/Vivado/2017.2/settings64.sh";
}
