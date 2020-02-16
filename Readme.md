## A Self Desabling Build In Self Test Module for 256 x 4b SRAM

Pl. do not be deterred after seeing so many files! 

The code is written in a very simple format following the exact block diagram of the Built In Self Test Module. This is a self disabling BIST module, hence, once the testing is done, the module will self disable. 

The BIST module can run 6 different test patterns 1) Blanket Test 0 
                                                  2) Blanket Test 1
                                                  3) CheckerBoard
                                                  4) Reverse Checker Board
                                                  5) March C
                                                  6) March LR
To lessen the hassle and resource utilization, I have merged 1 & 2 and 3 & 4. 

The input to the BIST is (1) A signal named: What_Do_You_Want_To_Check which decides which test pattern to run and (2) A clock

The clock speed can be upto 333 MHz. The BIST_Testbench.v file is the exhaustive testbench which runs all the test patterns one after the other. 

I have also provided testbench for each individual module. 

P.S. If you wish to test the CheckerBoard and reverse CheckerBoard for the test pattern of 1010 and 0101 then simply change signals pre1 and pre2 to 1010 and 0101.

Thanks, 
