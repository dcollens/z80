EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Zilog
LIBS:Oscillators
LIBS:switches
LIBS:headquarters
LIBS:z80-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title ""
Date "2018-07-20"
Rev "12"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR072
U 1 1 59EFCC3B
P 800 2350
F 0 "#PWR072" H 800 2100 50  0001 C CNN
F 1 "GND" H 800 2200 50  0000 C CNN
F 2 "" H 800 2350 50  0001 C CNN
F 3 "" H 800 2350 50  0001 C CNN
	1    800  2350
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U16
U 2 1 59EFCC41
P 1400 950
F 0 "U16" H 1400 1000 50  0000 C CNN
F 1 "74AHC08" H 1400 900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	2    1400 950 
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U16
U 3 1 59EFCC48
P 1400 1400
F 0 "U16" H 1400 1450 50  0000 C CNN
F 1 "74AHC08" H 1400 1350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 1400 1400 50  0001 C CNN
F 3 "" H 1400 1400 50  0001 C CNN
	3    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U16
U 4 1 59EFCC4F
P 1400 1900
F 0 "U16" H 1400 1950 50  0000 C CNN
F 1 "74AHC08" H 1400 1850 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 1400 1900 50  0001 C CNN
F 3 "" H 1400 1900 50  0001 C CNN
	4    1400 1900
	1    0    0    -1  
$EndComp
NoConn ~ 2000 1900
NoConn ~ 2000 1400
NoConn ~ 2000 950 
Connection ~ 800  1500
Wire Wire Line
	800  850  800  2350
Connection ~ 800  1050
Connection ~ 800  1300
Connection ~ 800  2000
Connection ~ 800  1800
$Comp
L 74HC14 U2
U 3 1 59EFD88B
P 4450 850
F 0 "U2" H 4600 950 50  0000 C CNN
F 1 "74AHC14" H 4650 750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 4450 850 50  0001 C CNN
F 3 "" H 4450 850 50  0001 C CNN
	3    4450 850 
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U2
U 4 1 59EFD892
P 4450 1250
F 0 "U2" H 4600 1350 50  0000 C CNN
F 1 "74AHC14" H 4650 1150 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 4450 1250 50  0001 C CNN
F 3 "" H 4450 1250 50  0001 C CNN
	4    4450 1250
	1    0    0    -1  
$EndComp
NoConn ~ 4900 850 
NoConn ~ 4900 1250
$Comp
L GND #PWR073
U 1 1 59EFDA40
P 4000 1600
F 0 "#PWR073" H 4000 1350 50  0001 C CNN
F 1 "GND" H 4000 1450 50  0000 C CNN
F 2 "" H 4000 1600 50  0001 C CNN
F 3 "" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 850  4000 1600
Connection ~ 4000 1250
$Comp
L 74HC02 U9
U 4 1 59EFDB83
P 6000 1400
F 0 "U9" H 6000 1450 50  0000 C CNN
F 1 "74AHC02" H 6050 1350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 6000 1400 50  0001 C CNN
F 3 "" H 6000 1400 50  0001 C CNN
	4    6000 1400
	1    0    0    -1  
$EndComp
NoConn ~ 6600 1400
$Comp
L GND #PWR074
U 1 1 59EFDC50
P 5400 1800
F 0 "#PWR074" H 5400 1550 50  0001 C CNN
F 1 "GND" H 5400 1650 50  0000 C CNN
F 2 "" H 5400 1800 50  0001 C CNN
F 3 "" H 5400 1800 50  0001 C CNN
	1    5400 1800
	1    0    0    -1  
$EndComp
Connection ~ 5400 1500
Wire Wire Line
	5400 1300 5400 1800
$Comp
L 74LS32 U4
U 4 1 5B52E72D
P 2950 1400
F 0 "U4" H 2950 1450 50  0000 C CNN
F 1 "74AHC32" H 2950 1350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2950 1400 50  0001 C CNN
F 3 "" H 2950 1400 50  0001 C CNN
	4    2950 1400
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U4
U 3 1 5B52E734
P 2950 950
F 0 "U4" H 2950 1000 50  0000 C CNN
F 1 "74AHC32" H 2950 900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2950 950 50  0001 C CNN
F 3 "" H 2950 950 50  0001 C CNN
	3    2950 950 
	1    0    0    -1  
$EndComp
NoConn ~ 3550 950 
NoConn ~ 3550 1400
$Comp
L GND #PWR075
U 1 1 5B52E856
P 2350 1850
F 0 "#PWR075" H 2350 1600 50  0001 C CNN
F 1 "GND" H 2350 1700 50  0000 C CNN
F 2 "" H 2350 1850 50  0001 C CNN
F 3 "" H 2350 1850 50  0001 C CNN
	1    2350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 850  2350 1850
Connection ~ 2350 1050
Connection ~ 2350 1300
Connection ~ 2350 1500
$EndSCHEMATC