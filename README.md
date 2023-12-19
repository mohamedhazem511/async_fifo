# DESIGN ASYNCHRONOUS FIFO USING VERILOG

![image](https://github.com/mohamedhazem511/async_fifo/assets/114261199/3a5fb92c-2b63-403b-b09f-d88871c051f4)




# Description:
An asynchronous FIFO refers to a FIFO design where data values are written to a FIFO-buffer from one clock domain and the data values are read from the same FIFO buffer from another clock domain, where the two clock domains are asynchronous to each other. Asynchronous FIFOs are used to safely pass data from one clock domain to another clock domain. using Multi-Flop/ Gray code Synchronization Scheme Technique to synchronize muti-bits between two different clock domains.

# Project phases:-
- RTL Design from Scratch of system blocks (FIFO Memory Buffer, Multi-bits Synchronizer, read pointer & empty generation logic, Write pointer & full generation logic).
- Integrate and verify functionality through self-checking testbench.
- Synthesize and optimize the design using design compiler tool (Vivado).



# BINARY TO GRAY CODE CONVERTER

   ![image](https://github.com/mohamedhazem511/async_fifo/assets/114261199/9a3f87d0-f750-45cb-b4bf-98680aae6833)



- G2 = B2 .
- G1 = B2 ^ B1.
- G0 = B1 ^ B0.


- REG_GRAY   = {G2 G1 G0}.
- REG_BIN    = {B2 B1 B0}.
- REG_GRAY   = REG_BIN ^ REG_BIN >>1.



# Main Blocks

  #  1.	FIFO Read Pointer & Empty Flag. 
  - We generate empty logic at read pointer equal synchronized-write pointer or at rest.
  - We implement the block as shown in the figure.

       ![image](https://github.com/mohamedhazem511/async_fifo/assets/114261199/c7115803-46e1-4bf3-b4b9-7a515e82c1ba)





   # 2. FIFO Write Pointer & Full Flag.
   - The full comparison is not as simple to do as the empty comparison. Pointers that are one bit larger than needed to address the FIFO memory buffer are still used for the comparison, but simply using Gray code counters with an extra bit to do the comparison is not valid to determine the full condition. The problem is that a Gray code is a symmetric code except for the MSBs.
   - The correct method to perform the full comparison is accomplished by synchronizing the read pointer into the write clock domain and then there are three conditions that are all necessary for the FIFO to be full:-

     1. The write pointer and the synchronized read pointer MSB's are not equal (because the write pointer must have wrapped one more time than the read pointer).
     2. The write pointer and the synchronized read pointer 2nd MSB's are not equal (because an inverted 2nd MSB from one pointer must be tested against the un-inverted 2nd MSB from the other pointer, which is required if the MSB's are also inverses of each other).
     3. All other write pointer and synchronized read pointer bits must be equal.
     - So, we use N+1-bit Gray Counter to a N bit FIFO address because we need the MSB to Full & Empty Flags.
     
   - We implement the block as shown in the last figure. The only difference is the full flag.

   # 3. Multi-flop Synchronizer.

The multi-flop synchronizer block is commonly used in asynchronous FIFO designs to synchronize signals between different clock domains. Asynchronous FIFOs are used to transfer data between two clock domains that have different clock frequencies or are not synchronized. In such scenarios, it is necessary to synchronize the control signals, such as read and write pointers, to ensure proper data transfer and prevent any data loss or corruption. The multi-flop synchronizer block helps achieve this synchronization by transferring the signals through a series of flip-flops.

Here's why the multi-flop synchronizer block is used in an asynchronous FIFO:
1.	Clock Domain Crossing: The read and write pointers are typically driven by different clocks, which means they operate in separate clock domains. To safely transfer data between these domains, the signals need to be synchronized to the destination clock domain.
2.	Metastability: When a signal is transferred from one clock domain to another, it passes through a metastable state during the transition. This metastable state can lead to unpredictable behavior and data corruption if not properly handled. By using multiple flip-flops in the synchronizer block, the signal is sampled and stabilized over multiple clock cycles, reducing the risk of metastability.

       ![image](https://github.com/mohamedhazem511/async_fifo/assets/114261199/34f489e3-decb-4cb9-a091-201027075ce9)




