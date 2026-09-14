#RDNA2-Compute-Unit
This project aims to reverse engineer the RDNA2 Compute unit found in AMD's RX6000 series GPUs.


**TO RUN**

 iverilog -g2012 -I. -s test_tb -o test_tb.vvp test_tb.v temp_test.v

 vvp test_tb.vvp

 **expected output:**   test=7f800000 boop=7f800000