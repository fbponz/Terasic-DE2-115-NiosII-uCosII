# Terasic DE2-115- Microprocessor Software (FPGA) NIOSII-uCosII (RTOS)

## Content:
The first part is to prepare the FPGA project, we must create the NIOSII Microprocessor, using Qsys. Our design has this specifications:


- Nios II (CPU).

- Clock System:
 
    - PLL
  
    - Source of Clock.
  
    - Source of Reset

- SDRAM 128Mbytes.

- Flash Memory 8MBytes.

- Tri-State Bus to Flash Memory.

- 5 Parallel Interfaces to manage, Inputs Outputs, Switch, buttons, Red Led, Green Led and 7-Segment displays.

- Inteface to control JTAG UART, comunication with PC.

- Controller to LCD.

- Timer.

- Performance Counter.

- UART to control communications by RS-232

- Controller of keyboard / mouse by PS2.

- Controller codec of audio.

The file that contains this NIOS-II configuration is file ejer2.qsys

After that, we have to integrate with Quartus project in our case the name of this project "DE2_115_Media_Computer", and the integration was done in "DE2_115_Media_Computer.v". If you have the same board you can program and send to the board "DE2_115_Media_Computer.sof". The next step is to prepare "nios_system.sopcinfo" in Quartus. We use this file to create the project in Eclipse. We must create the project like "Nios II Application and BSP from Template" and now you are ready to start to code this microproccesor software.

In this project our code is an example and is located here.
Terasic-DE2-115-NiosII-uCosII / software / Elevator / hello_ucosii.c
The test application was develop a Lift Control, using the different switchs and buttons to modified his behavour it.

I'm gonna let you show how work with a video.

[Video](https://www.youtube.com/watch?v=zANU1Rv_bM0)

Kind Regards, Fbponz.

**Contact:** e-Mail: fbponz@gmail.com
