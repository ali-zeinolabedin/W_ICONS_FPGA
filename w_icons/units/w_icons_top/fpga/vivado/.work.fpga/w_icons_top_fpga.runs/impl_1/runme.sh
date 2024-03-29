#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/smaz-brn/tool_extended/Vivado/2023.2/ids_lite/ISE/bin/lin64:/home/smaz-brn/tool_extended/Vivado/2023.2/bin
else
  PATH=/home/smaz-brn/tool_extended/Vivado/2023.2/ids_lite/ISE/bin/lin64:/home/smaz-brn/tool_extended/Vivado/2023.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/smaz-brn/project/ASIC-W-ICONS-FPGA/Cadence/w_icons/units/w_icons_top/fpga/vivado/.work.fpga/w_icons_top_fpga.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log w_icons_top.vdi -applog -m64 -tempDir ./.work.fpga -product Vivado -messageDb vivado.pb -mode batch -source w_icons_top.tcl -notrace


