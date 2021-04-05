# FPGA experiments

## Resources for Digilent Basys 3

Digilent Basys 3, built on Artix-7, specifically XC7A35T-1CPG236C.

- Basys 3 overview: <https://reference.digilentinc.com/reference/programmable-logic/basys-3/start>
- Basys 3 reference manual: <https://reference.digilentinc.com/reference/programmable-logic/basys-3/reference-manual>
- Basys 3 schematics: <https://reference.digilentinc.com/learn/documentation/schematics/basys-3-schematic>
- Xilinx series 7 datasheet: <https://reference.digilentinc.com/learn/programmable-logic/doc/datasheets/7-series-fpgas-overview>


## Installing Vivado

Things from Vivado are needed for project "X-Ray" to generate the bitstream for
programming the FPGA.

1. Download the full install for 2017.2 (~20GB). <https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Vivado_SDK_2017.2_0616_1.tar.gz>

2. On Ubuntu I need `libtinfo5` for the installer to complete

    - `apt-get install libtinfo5`

3. Extract `Xilinx_Vivado_SDK_2017.2_0616_1.tar.gz`

    - `tar --exclude "*win64*" -xvf ./Xilinx_Vivado_SDK_2017.2_0616_1.tar.gz`

      to skip some windows files we don't care about (smaller unpack)

4. Run `./xsetup` and select the device types you need.


## Install cable drivers

Needed for vivado to find the device.

```
# wherever I installed vivado
$ ~/opt/Xilinx/Vivado/2017.2/data/xicom/cable_drivers/lin64/install_script/install_drivers/install_drivers

INFO: Installing cable drivers.
INFO: Script name = ./install_drivers
INFO: HostName = tpa
INFO: Current working dir = /home/adam/opt/Xilinx/Vivado/2017.2/data/xicom/cable_drivers/lin64/install_script/install_drivers
INFO: Kernel version = 5.8.0-26-generic.
INFO: Arch = x86_64.
Successfully installed Digilent Cable Drivers
--File /etc/udev/rules.d/52-xilinx-ftdi-usb.rules does not exist.
--File version of /etc/udev/rules.d/52-xilinx-ftdi-usb.rules = 0000.
--Updating rules file.
--File /etc/udev/rules.d/52-xilinx-pcusb.rules does not exist.
--File version of /etc/udev/rules.d/52-xilinx-pcusb.rules = 0000.
--Updating rules file.

INFO: Digilent Return code = 0
INFO: Xilinx Return code = 0
INFO: Xilinx FTDI Return code = 0
INFO: Return code = 0
INFO: Driver installation successful.
CRITICAL WARNING: Cable(s) on the system must be unplugged then plugged back in order for the driver scripts to update the cables.
```


## Setup SymbiFlow

TBD.

Guide at <https://symbiflow.readthedocs.io/en/latest/symbiflow-arch-defs/docs/source/getting-started.html>.

```
git clone https://github.com/SymbiFlow/symbiflow-arch-defs.git
cd symbiflow-arch-defs
make env
cd build/xc/xc7/tests/counter
make counter_basys3_bit
```
