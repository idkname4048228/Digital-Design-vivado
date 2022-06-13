@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto d4abdc5caea241de87a80835d75f408c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot time_simulate_behav xil_defaultlib.time_simulate -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
