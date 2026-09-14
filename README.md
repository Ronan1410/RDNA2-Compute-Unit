This project aims to reverse engineer the RDNA2 Compute unit found in AMD's RX6000 series GPUs.


**TO RUN**

 iverilog -g2012 -I. -o test_tb.vvp CSA_test.v CSA.v fulladder.v

 vvp test_tb.vvp
