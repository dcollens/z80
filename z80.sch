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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 7
Title "Z80 Prototype"
Date "2018-03-28"
Rev "6"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "TODO: audio output, LCD panel output, CF card socket"
$EndDescr
$Comp
L Z80CPU U1
U 1 1 59B52D2B
P 3750 2750
F 0 "U1" H 3200 4150 50  0000 L CNN
F 1 "Z80CPU" H 4000 4150 50  0000 L CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59B52E03
P 3750 4250
F 0 "#PWR01" H 3750 4000 50  0001 C CNN
F 1 "GND" H 3750 4100 50  0000 C CNN
F 2 "" H 3750 4250 50  0001 C CNN
F 3 "" H 3750 4250 50  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L CXO_DIP8 X1
U 1 1 59B58662
P 1850 1850
F 0 "X1" H 1650 2100 50  0000 L CNN
F 1 "ACH10MHZ" H 1900 1600 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-8" H 2300 1500 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ACH.pdf" H 1750 1850 50  0001 C CNN
	1    1850 1850
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59B5914B
P 800 1150
F 0 "SW1" H 850 1250 50  0000 L CNN
F 1 "KS01Q" H 800 1090 50  0000 C CNN
F 2 "" H 800 1350 50  0001 C CNN
F 3 "" H 800 1350 50  0001 C CNN
	1    800  1150
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U2
U 1 1 59B59207
P 1600 1150
F 0 "U2" H 1750 1250 50  0000 C CNN
F 1 "74AHC14" H 1800 1050 50  0000 C CNN
F 2 "" H 1600 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ahc14.pdf" H 1600 1150 50  0001 C CNN
	1    1600 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59B59360
P 600 1700
F 0 "#PWR02" H 600 1450 50  0001 C CNN
F 1 "GND" H 600 1550 50  0000 C CNN
F 2 "" H 600 1700 50  0001 C CNN
F 3 "" H 600 1700 50  0001 C CNN
	1    600  1700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59B59384
P 1150 1450
F 0 "C1" H 1175 1550 50  0000 L CNN
F 1 "0.1uF" H 1175 1350 50  0000 L CNN
F 2 "" H 1188 1300 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59B595E6
P 1150 850
F 0 "R1" V 1230 850 50  0000 C CNN
F 1 "1M" V 1150 850 50  0000 C CNN
F 2 "" V 1080 850 50  0001 C CNN
F 3 "" H 1150 850 50  0001 C CNN
	1    1150 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59B598B1
P 1850 2150
F 0 "#PWR03" H 1850 1900 50  0001 C CNN
F 1 "GND" H 1850 2000 50  0000 C CNN
F 2 "" H 1850 2150 50  0001 C CNN
F 3 "" H 1850 2150 50  0001 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59B5B988
P 2650 7650
F 0 "C2" H 2675 7750 50  0000 L CNN
F 1 "0.1uF" H 2675 7550 50  0000 L CNN
F 2 "" H 2688 7500 50  0001 C CNN
F 3 "" H 2650 7650 50  0001 C CNN
	1    2650 7650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59B5BA03
P 2400 7800
F 0 "#PWR04" H 2400 7550 50  0001 C CNN
F 1 "GND" H 2400 7650 50  0000 C CNN
F 2 "" H 2400 7800 50  0001 C CNN
F 3 "" H 2400 7800 50  0001 C CNN
	1    2400 7800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59B5BAAA
P 2950 7650
F 0 "C3" H 2975 7750 50  0000 L CNN
F 1 "0.1uF" H 2975 7550 50  0000 L CNN
F 2 "" H 2988 7500 50  0001 C CNN
F 3 "" H 2950 7650 50  0001 C CNN
	1    2950 7650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 59B5E457
P 3750 1250
F 0 "#PWR05" H 3750 1100 50  0001 C CNN
F 1 "VCC" H 3750 1400 50  0000 C CNN
F 2 "" H 3750 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0001 C CNN
	1    3750 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 59B5E48F
P 1850 1550
F 0 "#PWR06" H 1850 1400 50  0001 C CNN
F 1 "VCC" H 1850 1700 50  0000 C CNN
F 2 "" H 1850 1550 50  0001 C CNN
F 3 "" H 1850 1550 50  0001 C CNN
	1    1850 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 59B5E4B3
P 1150 700
F 0 "#PWR07" H 1150 550 50  0001 C CNN
F 1 "VCC" H 1150 850 50  0000 C CNN
F 2 "" H 1150 700 50  0001 C CNN
F 3 "" H 1150 700 50  0001 C CNN
	1    1150 700 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 59B5E4D7
P 2400 7500
F 0 "#PWR08" H 2400 7350 50  0001 C CNN
F 1 "VCC" H 2400 7650 50  0000 C CNN
F 2 "" H 2400 7500 50  0001 C CNN
F 3 "" H 2400 7500 50  0001 C CNN
	1    2400 7500
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U2
U 2 1 59B5E527
P 2600 1150
F 0 "U2" H 2750 1250 50  0000 C CNN
F 1 "74AHC14" H 2800 1050 50  0000 C CNN
F 2 "" H 2600 1150 50  0001 C CNN
F 3 "" H 2600 1150 50  0001 C CNN
	2    2600 1150
	1    0    0    -1  
$EndComp
NoConn ~ 3050 3950
$Comp
L VCC #PWR09
U 1 1 59B5EB83
P 2950 3850
F 0 "#PWR09" H 2950 3700 50  0001 C CNN
F 1 "VCC" H 2950 4000 50  0000 C CNN
F 2 "" H 2950 3850 50  0001 C CNN
F 3 "" H 2950 3850 50  0001 C CNN
	1    2950 3850
	1    0    0    -1  
$EndComp
NoConn ~ 3050 2850
NoConn ~ 3050 2650
$Comp
L VCC #PWR010
U 1 1 59B5EC49
P 2950 2750
F 0 "#PWR010" H 2950 2600 50  0001 C CNN
F 1 "VCC" H 2950 2900 50  0000 C CNN
F 2 "" H 2950 2750 50  0001 C CNN
F 3 "" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 59B5ECC3
P 2950 2150
F 0 "#PWR011" H 2950 2000 50  0001 C CNN
F 1 "VCC" H 2950 2300 50  0000 C CNN
F 2 "" H 2950 2150 50  0001 C CNN
F 3 "" H 2950 2150 50  0001 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
$Comp
L SST39SF010 U3
U 1 1 59B6CF84
P 6000 2750
F 0 "U3" H 6000 4050 50  0000 C CNN
F 1 "SST39SF010" H 6000 1550 50  0000 C CNN
F 2 "" H 6000 3050 50  0001 C CNN
F 3 "" H 6000 3050 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3350
NoConn ~ 5400 3250
$Comp
L GND #PWR012
U 1 1 59B6D08B
P 5250 3150
F 0 "#PWR012" H 5250 2900 50  0001 C CNN
F 1 "GND" H 5250 3000 50  0000 C CNN
F 2 "" H 5250 3150 50  0001 C CNN
F 3 "" H 5250 3150 50  0001 C CNN
	1    5250 3150
	1    0    0    -1  
$EndComp
Text Label 4500 1550 0    60   ~ 0
A0
Text Label 4500 1650 0    60   ~ 0
A1
Text Label 4500 1750 0    60   ~ 0
A2
Text Label 4500 1850 0    60   ~ 0
A3
Text Label 4500 1950 0    60   ~ 0
A4
Text Label 4500 2050 0    60   ~ 0
A5
Text Label 4500 2150 0    60   ~ 0
A6
Text Label 4500 2250 0    60   ~ 0
A7
Text Label 4500 2350 0    60   ~ 0
A8
Text Label 4500 2450 0    60   ~ 0
A9
Text Label 4500 2550 0    60   ~ 0
A10
Text Label 4500 2650 0    60   ~ 0
A11
Text Label 4500 2750 0    60   ~ 0
A12
Text Label 4500 2850 0    60   ~ 0
A13
Text Label 4500 2950 0    60   ~ 0
A14
Text Label 4500 3050 0    60   ~ 0
A15
Entry Wire Line
	4650 1550 4750 1650
Entry Wire Line
	4650 1650 4750 1750
Entry Wire Line
	4650 1750 4750 1850
Entry Wire Line
	4650 1850 4750 1950
Entry Wire Line
	4650 1950 4750 2050
Entry Wire Line
	4650 2050 4750 2150
Entry Wire Line
	4650 2150 4750 2250
Entry Wire Line
	4650 2250 4750 2350
Entry Wire Line
	4650 2350 4750 2450
Entry Wire Line
	4650 2450 4750 2550
Entry Wire Line
	4650 2550 4750 2650
Entry Wire Line
	4650 2650 4750 2750
Entry Wire Line
	4650 2750 4750 2850
Entry Wire Line
	4650 2850 4750 2950
Entry Wire Line
	4650 2950 4750 3050
Entry Wire Line
	4650 3050 4750 3150
Entry Wire Line
	5150 1650 5250 1550
Entry Wire Line
	5150 1750 5250 1650
Entry Wire Line
	5150 1850 5250 1750
Entry Wire Line
	5150 1950 5250 1850
Entry Wire Line
	5150 2050 5250 1950
Entry Wire Line
	5150 2150 5250 2050
Entry Wire Line
	5150 2250 5250 2150
Entry Wire Line
	5150 2350 5250 2250
Entry Wire Line
	5150 2450 5250 2350
Entry Wire Line
	5150 2550 5250 2450
Entry Wire Line
	5150 2650 5250 2550
Entry Wire Line
	5150 2750 5250 2650
Entry Wire Line
	5150 2850 5250 2750
Entry Wire Line
	5150 2950 5250 2850
Text Label 5250 1550 0    60   ~ 0
A0
Text Label 5250 1650 0    60   ~ 0
A1
Text Label 5250 1750 0    60   ~ 0
A2
Text Label 5250 1850 0    60   ~ 0
A3
Text Label 5250 1950 0    60   ~ 0
A4
Text Label 5250 2050 0    60   ~ 0
A5
Text Label 5250 2150 0    60   ~ 0
A6
Text Label 5250 2250 0    60   ~ 0
A7
Text Label 5250 2350 0    60   ~ 0
A8
Text Label 5250 2450 0    60   ~ 0
A9
Text Label 5250 2550 0    60   ~ 0
A10
Text Label 5250 2650 0    60   ~ 0
A11
Text Label 5250 2750 0    60   ~ 0
A12
Text Label 5250 2850 0    60   ~ 0
A13
$Comp
L VCC #PWR013
U 1 1 59B7E032
P 5250 3550
F 0 "#PWR013" H 5250 3400 50  0001 C CNN
F 1 "VCC" H 5250 3700 50  0000 C CNN
F 2 "" H 5250 3550 50  0001 C CNN
F 3 "" H 5250 3550 50  0001 C CNN
	1    5250 3550
	1    0    0    -1  
$EndComp
Text Label 4500 3250 0    60   ~ 0
D0
Text Label 4500 3350 0    60   ~ 0
D1
Text Label 4500 3450 0    60   ~ 0
D2
Text Label 4500 3550 0    60   ~ 0
D3
Text Label 4500 3650 0    60   ~ 0
D4
Text Label 4500 3750 0    60   ~ 0
D5
Text Label 4500 3850 0    60   ~ 0
D6
Text Label 4500 3950 0    60   ~ 0
D7
Entry Wire Line
	4650 3250 4750 3350
Entry Wire Line
	4650 3350 4750 3450
Entry Wire Line
	4650 3450 4750 3550
Entry Wire Line
	4650 3550 4750 3650
Entry Wire Line
	4650 3650 4750 3750
Entry Wire Line
	4650 3750 4750 3850
Entry Wire Line
	4650 3850 4750 3950
Entry Wire Line
	4650 3950 4750 4050
Entry Wire Line
	6750 1550 6850 1650
Entry Wire Line
	6750 1650 6850 1750
Entry Wire Line
	6750 1750 6850 1850
Entry Wire Line
	6750 1850 6850 1950
Entry Wire Line
	6750 1950 6850 2050
Entry Wire Line
	6750 2050 6850 2150
Entry Wire Line
	6750 2150 6850 2250
Entry Wire Line
	6750 2250 6850 2350
Text Label 6600 1550 0    60   ~ 0
D0
Text Label 6600 1650 0    60   ~ 0
D1
Text Label 6600 1750 0    60   ~ 0
D2
Text Label 6600 1850 0    60   ~ 0
D3
Text Label 6600 1950 0    60   ~ 0
D4
Text Label 6600 2050 0    60   ~ 0
D5
Text Label 6600 2150 0    60   ~ 0
D6
Text Label 6600 2250 0    60   ~ 0
D7
$Comp
L C C4
U 1 1 59B7EC1B
P 3250 7650
F 0 "C4" H 3275 7750 50  0000 L CNN
F 1 "0.1uF" H 3275 7550 50  0000 L CNN
F 2 "" H 3288 7500 50  0001 C CNN
F 3 "" H 3250 7650 50  0001 C CNN
	1    3250 7650
	1    0    0    -1  
$EndComp
Text Notes 2600 7450 0    60   ~ 0
Near\nU1
Text Notes 2900 7450 0    60   ~ 0
Near\nU2
Text Notes 3200 7450 0    60   ~ 0
Near\nU3
$Comp
L 74LS32 U4
U 1 1 59B7F0F2
P 7650 950
F 0 "U4" H 7650 1000 50  0000 C CNN
F 1 "74AHC32" H 7650 900 50  0000 C CNN
F 2 "" H 7650 950 50  0001 C CNN
F 3 "" H 7650 950 50  0001 C CNN
	1    7650 950 
	-1   0    0    -1  
$EndComp
Text Label 2750 3250 0    60   ~ 0
~RD
Text Label 2750 3350 0    60   ~ 0
~WR
Text Label 2750 3450 0    60   ~ 0
~MREQ
Text Label 2750 3550 0    60   ~ 0
~IORQ
Text Label 7050 750  2    60   ~ 0
~MREQ
Text Label 5200 3850 0    60   ~ 0
~RD
Text Label 8400 1050 2    60   ~ 0
A15
$Comp
L C C5
U 1 1 59B7FF72
P 3550 7650
F 0 "C5" H 3575 7750 50  0000 L CNN
F 1 "0.1uF" H 3575 7550 50  0000 L CNN
F 2 "" H 3588 7500 50  0001 C CNN
F 3 "" H 3550 7650 50  0001 C CNN
	1    3550 7650
	1    0    0    -1  
$EndComp
Text Notes 3500 7450 0    60   ~ 0
Near\nU4
$Comp
L 74LS32 U4
U 2 1 59B802F5
P 6300 850
F 0 "U4" H 6300 900 50  0000 C CNN
F 1 "74AHC32" H 6300 800 50  0000 C CNN
F 2 "" H 6300 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	2    6300 850 
	-1   0    0    -1  
$EndComp
Text Label 9600 750  2    60   ~ 0
A13
$Comp
L AS6C1008-55SIN U5
U 1 1 59B81085
P 8000 1450
F 0 "U5" H 8000 1489 50  0000 C BNN
F 1 "AS6C1008-55PCN" H 8050 -400 50  0000 C TNN
F 2 "" H 8000 1450 50  0001 L BNN
F 3 "Alliance Memory" H 8000 1450 50  0001 L BNN
F 4 "AS6C1008 Series 1-Mbit 128Kx8 55ns CMOS Static RAM" H 8000 1450 50  0001 L BNN "Description"
	1    8000 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59B81476
P 8700 3150
F 0 "#PWR014" H 8700 2900 50  0001 C CNN
F 1 "GND" H 8700 3000 50  0000 C CNN
F 2 "" H 8700 3150 50  0001 C CNN
F 3 "" H 8700 3150 50  0001 C CNN
	1    8700 3150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 59B81557
P 8700 3050
F 0 "#PWR015" H 8700 2900 50  0001 C CNN
F 1 "VCC" H 8700 3200 50  0000 C CNN
F 2 "" H 8700 3050 50  0001 C CNN
F 3 "" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59B816F6
P 7400 3150
F 0 "#PWR016" H 7400 2900 50  0001 C CNN
F 1 "GND" H 7400 3000 50  0000 C CNN
F 2 "" H 7400 3150 50  0001 C CNN
F 3 "" H 7400 3150 50  0001 C CNN
	1    7400 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	8750 1550 8850 1650
Entry Wire Line
	8750 1650 8850 1750
Entry Wire Line
	8750 1750 8850 1850
Entry Wire Line
	8750 1850 8850 1950
Entry Wire Line
	8750 1950 8850 2050
Entry Wire Line
	8750 2050 8850 2150
Entry Wire Line
	8750 2150 8850 2250
Entry Wire Line
	8750 2250 8850 2350
Text Label 8600 1550 0    60   ~ 0
D0
Text Label 8600 1650 0    60   ~ 0
D1
Text Label 8600 1750 0    60   ~ 0
D2
Text Label 8600 1850 0    60   ~ 0
D3
Text Label 8600 1950 0    60   ~ 0
D4
Text Label 8600 2050 0    60   ~ 0
D5
Text Label 8600 2150 0    60   ~ 0
D6
Text Label 8600 2250 0    60   ~ 0
D7
Entry Wire Line
	7250 1650 7350 1550
Entry Wire Line
	7250 1750 7350 1650
Entry Wire Line
	7250 1850 7350 1750
Entry Wire Line
	7250 1950 7350 1850
Entry Wire Line
	7250 2050 7350 1950
Entry Wire Line
	7250 2150 7350 2050
Entry Wire Line
	7250 2250 7350 2150
Entry Wire Line
	7250 2350 7350 2250
Entry Wire Line
	7250 2450 7350 2350
Entry Wire Line
	7250 2550 7350 2450
Entry Wire Line
	7250 2650 7350 2550
Entry Wire Line
	7250 2750 7350 2650
Entry Wire Line
	7250 2850 7350 2750
Entry Wire Line
	7250 2950 7350 2850
Text Label 7350 1550 0    60   ~ 0
A0
Text Label 7350 1650 0    60   ~ 0
A1
Text Label 7350 1750 0    60   ~ 0
A2
Text Label 7350 1850 0    60   ~ 0
A3
Text Label 7350 1950 0    60   ~ 0
A4
Text Label 7350 2050 0    60   ~ 0
A5
Text Label 7350 2150 0    60   ~ 0
A6
Text Label 7350 2250 0    60   ~ 0
A7
Text Label 7350 2350 0    60   ~ 0
A8
Text Label 7350 2450 0    60   ~ 0
A9
Text Label 7350 2550 0    60   ~ 0
A10
Text Label 7350 2650 0    60   ~ 0
A11
Text Label 7350 2750 0    60   ~ 0
A12
Text Label 7350 2850 0    60   ~ 0
A13
Entry Wire Line
	7250 3050 7350 2950
Entry Wire Line
	7250 3150 7350 3050
Text Label 7350 2950 0    60   ~ 0
A14
Text Label 7350 3050 0    60   ~ 0
A15
Entry Wire Line
	5150 3050 5250 2950
Entry Wire Line
	5150 3150 5250 3050
Text Label 5250 2950 0    60   ~ 0
A14
Text Label 5250 3050 0    60   ~ 0
A15
Text Label 8750 2450 2    60   ~ 0
~WR
Text Label 8750 2550 2    60   ~ 0
~RD
NoConn ~ 8600 2950
$Comp
L C C6
U 1 1 59B8393A
P 3850 7650
F 0 "C6" H 3875 7750 50  0000 L CNN
F 1 "0.1uF" H 3875 7550 50  0000 L CNN
F 2 "" H 3888 7500 50  0001 C CNN
F 3 "" H 3850 7650 50  0001 C CNN
	1    3850 7650
	1    0    0    -1  
$EndComp
Text Notes 3800 7450 0    60   ~ 0
Near\nU5
Text Label 8900 2750 2    60   ~ 0
~MREQ
Text Label 2800 5750 0    60   ~ 0
~IORQ
$Comp
L C C7
U 1 1 59B8A7DC
P 4150 7650
F 0 "C7" H 4175 7750 50  0000 L CNN
F 1 "0.1uF" H 4175 7550 50  0000 L CNN
F 2 "" H 4188 7500 50  0001 C CNN
F 3 "" H 4150 7650 50  0001 C CNN
	1    4150 7650
	1    0    0    -1  
$EndComp
Text Notes 4100 7450 0    60   ~ 0
Near\nU6
$Comp
L 74LS138 U6
U 1 1 59B976BC
P 3550 5400
F 0 "U6" H 3650 5900 50  0000 C CNN
F 1 "74AHC138" H 3700 4851 50  0000 C CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
Text Label 2850 5050 0    60   ~ 0
A4
Text Label 2850 5150 0    60   ~ 0
A5
Text Label 2850 5250 0    60   ~ 0
A6
Wire Wire Line
	2150 1850 3050 1850
Wire Wire Line
	1000 1150 1150 1150
Wire Wire Line
	3050 1150 3050 1550
Connection ~ 1150 1150
Wire Wire Line
	1150 1000 1150 1300
Wire Wire Line
	600  1150 600  1700
Wire Wire Line
	600  1600 1150 1600
Wire Wire Line
	1850 1550 1550 1550
Wire Wire Line
	1550 1550 1550 1850
Connection ~ 600  1600
Connection ~ 2650 7500
Connection ~ 2650 7800
Wire Wire Line
	2950 3850 3050 3850
Wire Wire Line
	3050 2750 2950 2750
Wire Wire Line
	3050 2150 2950 2150
Wire Wire Line
	5250 3150 5400 3150
Wire Wire Line
	4450 1550 4650 1550
Wire Wire Line
	4450 1650 4650 1650
Wire Wire Line
	4450 1750 4650 1750
Wire Wire Line
	4450 1850 4650 1850
Wire Wire Line
	4450 1950 4650 1950
Wire Wire Line
	4450 2050 4650 2050
Wire Wire Line
	4450 2150 4650 2150
Wire Wire Line
	4450 2250 4650 2250
Wire Wire Line
	4450 2350 4650 2350
Wire Wire Line
	4450 2450 4650 2450
Wire Wire Line
	4450 2550 4650 2550
Wire Wire Line
	4450 2650 4650 2650
Wire Wire Line
	4450 2750 4650 2750
Wire Wire Line
	4450 2850 4650 2850
Wire Wire Line
	4450 2950 4650 2950
Wire Wire Line
	4450 3050 4650 3050
Wire Wire Line
	5400 1550 5250 1550
Wire Wire Line
	5400 1650 5250 1650
Wire Wire Line
	5400 1750 5250 1750
Wire Wire Line
	5400 1850 5250 1850
Wire Wire Line
	5400 1950 5250 1950
Wire Wire Line
	5400 2050 5250 2050
Wire Wire Line
	5400 2150 5250 2150
Wire Wire Line
	5400 2250 5250 2250
Wire Wire Line
	5400 2350 5250 2350
Wire Wire Line
	5400 2450 5250 2450
Wire Wire Line
	5400 2550 5250 2550
Wire Wire Line
	5400 2650 5250 2650
Wire Wire Line
	5400 2750 5250 2750
Wire Wire Line
	5400 2850 5250 2850
Wire Wire Line
	5400 3550 5250 3550
Wire Wire Line
	4450 3250 4650 3250
Wire Wire Line
	4450 3350 4650 3350
Wire Wire Line
	4450 3450 4650 3450
Wire Wire Line
	4450 3550 4650 3550
Wire Wire Line
	4450 3650 4650 3650
Wire Wire Line
	4450 3750 4650 3750
Wire Wire Line
	4450 3850 4650 3850
Wire Wire Line
	4450 3950 4650 3950
Wire Wire Line
	6600 1550 6750 1550
Wire Wire Line
	6600 1650 6750 1650
Wire Wire Line
	6600 1750 6750 1750
Wire Wire Line
	6600 1850 6750 1850
Wire Wire Line
	6600 1950 6750 1950
Wire Wire Line
	6600 2050 6750 2050
Wire Wire Line
	6600 2150 6750 2150
Wire Wire Line
	6600 2250 6750 2250
Wire Bus Line
	6850 1650 6850 2350
Wire Bus Line
	5150 1650 5150 3150
Connection ~ 2950 7500
Connection ~ 2950 7800
Wire Wire Line
	2750 3250 3050 3250
Wire Wire Line
	2750 3350 3050 3350
Wire Wire Line
	2750 3450 3050 3450
Wire Wire Line
	2750 3550 3050 3550
Wire Wire Line
	6900 750  7050 750 
Wire Wire Line
	8250 1050 8400 1050
Wire Wire Line
	5400 3850 5200 3850
Connection ~ 3250 7500
Connection ~ 3250 7800
Wire Wire Line
	9450 750  9600 750 
Wire Wire Line
	5000 3750 5400 3750
Wire Wire Line
	8600 3150 8700 3150
Wire Wire Line
	8700 3050 8600 3050
Wire Wire Line
	7500 3150 7400 3150
Wire Wire Line
	8600 1550 8750 1550
Wire Wire Line
	8600 1650 8750 1650
Wire Wire Line
	8600 1750 8750 1750
Wire Wire Line
	8600 1850 8750 1850
Wire Wire Line
	8600 1950 8750 1950
Wire Wire Line
	8600 2050 8750 2050
Wire Wire Line
	8600 2150 8750 2150
Wire Wire Line
	8600 2250 8750 2250
Wire Bus Line
	8850 1650 8850 2350
Wire Wire Line
	7500 1550 7350 1550
Wire Wire Line
	7500 1650 7350 1650
Wire Wire Line
	7500 1750 7350 1750
Wire Wire Line
	7500 1850 7350 1850
Wire Wire Line
	7500 1950 7350 1950
Wire Wire Line
	7500 2050 7350 2050
Wire Wire Line
	7500 2150 7350 2150
Wire Wire Line
	7500 2250 7350 2250
Wire Wire Line
	7500 2350 7350 2350
Wire Wire Line
	7500 2450 7350 2450
Wire Wire Line
	7500 2550 7350 2550
Wire Wire Line
	7500 2650 7350 2650
Wire Wire Line
	7500 2750 7350 2750
Wire Wire Line
	7500 2850 7350 2850
Wire Bus Line
	7250 1650 7250 3150
Wire Wire Line
	7500 2950 7350 2950
Wire Wire Line
	7500 3050 7350 3050
Wire Wire Line
	5400 2950 5250 2950
Wire Wire Line
	5400 3050 5250 3050
Wire Wire Line
	8600 2550 8750 2550
Wire Wire Line
	8600 2450 8750 2450
Connection ~ 3550 7500
Connection ~ 3550 7800
Wire Wire Line
	8600 2750 8900 2750
Wire Wire Line
	8600 2650 9000 2650
Wire Wire Line
	2150 1150 2050 1150
Wire Wire Line
	2950 5750 2800 5750
Connection ~ 3850 7500
Connection ~ 3850 7800
Wire Wire Line
	2950 5050 2850 5050
Wire Wire Line
	2950 5150 2850 5150
Wire Wire Line
	2950 5250 2850 5250
Wire Wire Line
	7050 950  7050 1250
Connection ~ 7050 950 
Wire Wire Line
	5700 850  5000 850 
Wire Wire Line
	5000 850  5000 3750
Wire Wire Line
	7050 1250 9000 1250
Wire Wire Line
	9000 1250 9000 2650
Wire Wire Line
	7050 950  6900 950 
NoConn ~ 4150 5550
NoConn ~ 4150 5650
NoConn ~ 4150 5750
$Comp
L LED_Small_ALT D1
U 1 1 59CD3900
P 1350 4050
F 0 "D1" H 1300 4175 50  0000 L CNN
F 1 "Green" H 1350 3952 50  0000 C CNN
F 2 "" V 1350 4050 50  0001 C CNN
F 3 "" V 1350 4050 50  0001 C CNN
	1    1350 4050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR017
U 1 1 59CD39B1
P 1350 4450
F 0 "#PWR017" H 1350 4200 50  0001 C CNN
F 1 "GND" H 1350 4300 50  0000 C CNN
F 2 "" H 1350 4450 50  0001 C CNN
F 3 "" H 1350 4450 50  0001 C CNN
	1    1350 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 59CD3A52
P 1350 3850
F 0 "#PWR018" H 1350 3700 50  0001 C CNN
F 1 "VCC" H 1350 4000 50  0000 C CNN
F 2 "" H 1350 3850 50  0001 C CNN
F 3 "" H 1350 3850 50  0001 C CNN
	1    1350 3850
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 59CD3BAF
P 1350 4300
F 0 "R18" V 1430 4300 50  0000 C CNN
F 1 "10K" V 1350 4300 50  0000 C CNN
F 2 "" V 1280 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0001 C CNN
	1    1350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 2750 2550
Text Label 2750 2250 0    60   ~ 0
~INT
Text Label 2750 2550 0    60   ~ 0
~M1
Text Label 3050 1250 0    60   ~ 0
~RESET
Wire Wire Line
	4150 5250 4450 5250
Text Label 2750 1850 0    60   ~ 0
CLK
Text Label 2850 5650 0    60   ~ 0
A7
Wire Wire Line
	2950 5650 2850 5650
$Comp
L VCC #PWR019
U 1 1 59D3FEB7
P 2800 5550
F 0 "#PWR019" H 2800 5400 50  0001 C CNN
F 1 "VCC" H 2800 5700 50  0000 C CNN
F 2 "" H 2800 5550 50  0001 C CNN
F 3 "" H 2800 5550 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5550 2800 5550
Text Label 4450 5050 2    60   ~ 0
~IORQ0
Text Label 4450 5150 2    60   ~ 0
~IORQ1
Text Label 4450 5250 2    60   ~ 0
~IORQ2
Wire Wire Line
	700  4450 1900 4450
Connection ~ 800  4450
Wire Wire Line
	1100 3850 1900 3850
NoConn ~ 1100 4050
NoConn ~ 1100 4150
$Comp
L Conn_01x02 J6
U 1 1 59D51D57
P 2100 4450
F 0 "J6" H 2100 4550 50  0000 C CNN
F 1 "PWR" H 2100 4250 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    1   
$EndComp
Connection ~ 1350 4450
Wire Wire Line
	1350 3850 1350 3950
Wire Wire Line
	1900 3850 1900 4350
Connection ~ 1350 3850
$Comp
L CP1_Small C24
U 1 1 59D54724
P 1650 4150
F 0 "C24" H 1660 4220 50  0000 L CNN
F 1 "10uF" H 1660 4070 50  0000 L CNN
F 2 "" H 1650 4150 50  0001 C CNN
F 3 "" H 1650 4150 50  0001 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4050 1650 3850
Connection ~ 1650 3850
Wire Wire Line
	1650 4250 1650 4450
Connection ~ 1650 4450
$Sheet
S 5050 4650 1000 650 
U 59D68A0C
F0 "Joystick Ports" 60
F1 "joystick.sch" 60
F2 "~RD" I L 5050 4900 60 
F3 "~IORQ0" I L 5050 5050 60 
F4 "~IORQ1" I L 5050 5200 60 
F5 "D[0..7]" B L 5050 4750 60 
$EndSheet
Wire Wire Line
	4150 5050 5050 5050
Wire Wire Line
	4150 5150 4900 5150
Wire Wire Line
	4150 5350 4450 5350
Text Label 4450 5350 2    60   ~ 0
~IORQ3
Wire Wire Line
	5050 4900 4850 4900
Text Label 4850 4900 0    60   ~ 0
~RD
Wire Bus Line
	4750 5650 5050 5650
Wire Bus Line
	4750 4750 5050 4750
Wire Wire Line
	5050 5800 4850 5800
Text Label 4850 5800 0    60   ~ 0
~WR
Wire Wire Line
	4900 5150 4900 5200
Wire Wire Line
	4900 5200 5050 5200
Connection ~ 4500 5050
Connection ~ 4600 5150
$Sheet
S 5050 5550 1200 650 
U 59D6B088
F0 "7-Seg Display" 60
F1 "7-Segment Display.sch" 60
F2 "~WR" I L 5050 5800 60 
F3 "~IORQ0" I L 5050 5950 60 
F4 "~IORQ1" I L 5050 6100 60 
F5 "D[0..7]" B L 5050 5650 60 
$EndSheet
Wire Wire Line
	4500 5050 4500 5950
Wire Wire Line
	4500 5950 5050 5950
Wire Wire Line
	4600 5150 4600 6100
Wire Wire Line
	4600 6100 5050 6100
Wire Bus Line
	4750 3350 4750 5650
Connection ~ 4750 4750
$Sheet
S 6850 4200 800  1100
U 59D78476
F0 "SIO" 60
F1 "SIO.sch" 60
F2 "~CE" I L 6850 4400 60 
F3 "~RESET" I L 6850 4500 60 
F4 "~M1" I L 6850 4600 60 
F5 "~IORQ" I L 6850 4700 60 
F6 "~RD" I L 6850 4800 60 
F7 "~INT" O L 6850 5100 60 
F8 "IEI" I R 7650 5000 60 
F9 "IEO" O R 7650 5100 60 
F10 "CLK" I L 6850 5200 60 
F11 "D[0..7]" B L 6850 4300 60 
F12 "C/~D" I L 6850 4900 60 
F13 "B/~A" I L 6850 5000 60 
F14 "SCLKA" I R 7650 4400 60 
F15 "SCLKB" I R 7650 4600 60 
$EndSheet
Wire Bus Line
	4750 4300 6850 4300
Connection ~ 4750 4300
Wire Wire Line
	6850 4400 6550 4400
Text Label 6550 4400 0    60   ~ 0
~IORQ2
Wire Wire Line
	6850 4500 6550 4500
Wire Wire Line
	6850 4600 6550 4600
Wire Wire Line
	6850 4700 6550 4700
Wire Wire Line
	6850 4800 6550 4800
Text Label 6550 4500 0    60   ~ 0
~RESET
Text Label 6550 4600 0    60   ~ 0
~M1
Text Label 6550 4700 0    60   ~ 0
~IORQ
Text Label 6550 4800 0    60   ~ 0
~RD
Wire Wire Line
	6850 5100 6550 5100
Wire Wire Line
	6850 5200 6550 5200
Text Label 6550 5100 0    60   ~ 0
~INT
Text Label 6550 5200 0    60   ~ 0
CLK
$Comp
L VCC #PWR020
U 1 1 59D7BD8F
P 7800 5000
F 0 "#PWR020" H 7800 4850 50  0001 C CNN
F 1 "VCC" H 7800 5150 50  0000 C CNN
F 2 "" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5100 7800 5100
Wire Bus Line
	4750 1650 4750 3150
Wire Wire Line
	7800 5000 7650 5000
Wire Wire Line
	6850 4900 6550 4900
Wire Wire Line
	6850 5000 6550 5000
Text Label 6550 4900 0    60   ~ 0
A1
Text Label 6550 5000 0    60   ~ 0
A0
$Sheet
S 6850 5550 800  1100
U 59D81490
F0 "PIO" 60
F1 "PIO.sch" 60
F2 "D[0..7]" B L 6850 5650 60 
F3 "~CE" I L 6850 5750 60 
F4 "~M1" I L 6850 5950 60 
F5 "~IORQ" I L 6850 6050 60 
F6 "~RD" I L 6850 6150 60 
F7 "C/~D" I L 6850 6250 60 
F8 "B/~A" I L 6850 6350 60 
F9 "~INT" O L 6850 6450 60 
F10 "IEI" I R 7650 6350 60 
F11 "IEO" O R 7650 6450 60 
F12 "CLK" I L 6850 6550 60 
F13 "~RESET" I L 6850 5850 60 
$EndSheet
Wire Wire Line
	2400 7500 4450 7500
Wire Wire Line
	2400 7800 4450 7800
Wire Bus Line
	6350 5650 6850 5650
Wire Bus Line
	6350 4050 6350 5650
Connection ~ 6350 4300
Wire Wire Line
	6850 5750 6550 5750
Text Label 6550 5750 0    60   ~ 0
~IORQ3
Wire Wire Line
	6850 5850 6550 5850
Wire Wire Line
	6850 5950 6550 5950
Wire Wire Line
	6850 6050 6550 6050
Wire Wire Line
	6850 6150 6550 6150
Text Label 6550 5850 0    60   ~ 0
~RESET
Text Label 6550 5950 0    60   ~ 0
~M1
Text Label 6550 6050 0    60   ~ 0
~IORQ
Text Label 6550 6150 0    60   ~ 0
~RD
Wire Wire Line
	6850 6450 6550 6450
Wire Wire Line
	6850 6550 6550 6550
Text Label 6550 6450 0    60   ~ 0
~INT
Text Label 6550 6550 0    60   ~ 0
CLK
Wire Wire Line
	6850 6250 6550 6250
Wire Wire Line
	6850 6350 6550 6350
Text Label 6550 6250 0    60   ~ 0
A1
Text Label 6550 6350 0    60   ~ 0
A0
Wire Wire Line
	7800 5100 7800 6350
Wire Wire Line
	7800 6350 7650 6350
Wire Wire Line
	8350 5100 8150 5100
$Comp
L R R29
U 1 1 59D85756
P 2600 2250
F 0 "R29" V 2680 2250 50  0000 C CNN
F 1 "10K" V 2600 2250 50  0000 C CNN
F 2 "" V 2530 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2250 2750 2250
$Comp
L VCC #PWR021
U 1 1 59D85B4D
P 2450 2250
F 0 "#PWR021" H 2450 2100 50  0001 C CNN
F 1 "VCC" H 2450 2400 50  0000 C CNN
F 2 "" H 2450 2250 50  0001 C CNN
F 3 "" H 2450 2250 50  0001 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 59D876BD
P 4450 7650
F 0 "C26" H 4475 7750 50  0000 L CNN
F 1 "0.1uF" H 4475 7550 50  0000 L CNN
F 2 "" H 4488 7500 50  0001 C CNN
F 3 "" H 4450 7650 50  0001 C CNN
	1    4450 7650
	1    0    0    -1  
$EndComp
Text Notes 4400 7450 0    60   ~ 0
Near\nU16
Connection ~ 4150 7500
Connection ~ 4150 7800
$Sheet
S 8350 4200 800  1100
U 59D91F17
F0 "CTC" 60
F1 "CTC.sch" 60
F2 "D[0..7]" B R 9150 4300 60 
F3 "~CE" I R 9150 4400 60 
F4 "~RESET" I R 9150 4500 60 
F5 "~M1" I R 9150 4600 60 
F6 "~IORQ" I R 9150 4700 60 
F7 "~RD" I R 9150 4800 60 
F8 "CS0" I R 9150 4900 60 
F9 "CS1" I R 9150 5000 60 
F10 "~INT" O R 9150 5100 60 
F11 "IEI" I L 8350 5000 60 
F12 "IEO" O L 8350 5100 60 
F13 "CLK" I R 9150 5200 60 
F14 "CCLK0" O L 8350 4400 60 
F15 "CCLK1" O L 8350 4600 60 
$EndSheet
Wire Wire Line
	4150 5450 4450 5450
Text Label 4450 5450 2    60   ~ 0
~IORQ4
Wire Wire Line
	9150 4400 9450 4400
Text Label 9450 4400 2    60   ~ 0
~IORQ4
Wire Wire Line
	9150 4500 9450 4500
Wire Wire Line
	9150 4600 9450 4600
Wire Wire Line
	9150 4700 9450 4700
Wire Wire Line
	9150 4800 9450 4800
Text Label 9450 4500 2    60   ~ 0
~RESET
Text Label 9450 4600 2    60   ~ 0
~M1
Text Label 9450 4700 2    60   ~ 0
~IORQ
Text Label 9450 4800 2    60   ~ 0
~RD
Wire Wire Line
	9150 5100 9450 5100
Wire Wire Line
	9150 5200 9450 5200
Text Label 9450 5100 2    60   ~ 0
~INT
Text Label 9450 5200 2    60   ~ 0
CLK
Wire Wire Line
	9150 4900 9450 4900
Wire Wire Line
	9150 5000 9450 5000
Text Label 9450 4900 2    60   ~ 0
A0
Text Label 9450 5000 2    60   ~ 0
A1
NoConn ~ 8150 5100
Wire Wire Line
	7650 6450 8050 6450
Wire Wire Line
	8050 6450 8050 5000
Wire Wire Line
	8050 5000 8350 5000
Wire Wire Line
	8350 4400 7650 4400
Wire Wire Line
	8350 4600 7650 4600
Wire Bus Line
	6350 4050 9250 4050
Wire Bus Line
	9250 4050 9250 4300
Wire Bus Line
	9250 4300 9150 4300
$Comp
L USB_B J5
U 1 1 59E23B9B
P 800 4050
F 0 "J5" H 600 4500 50  0000 L CNN
F 1 "USB_B" H 600 4400 50  0000 L CNN
F 2 "" H 950 4000 50  0001 C CNN
F 3 "" H 950 4000 50  0001 C CNN
	1    800  4050
	1    0    0    -1  
$EndComp
$Sheet
S 600  7650 550  250 
U 59EFC926
F0 "Spares" 60
F1 "spares.sch" 60
$EndSheet
$Comp
L 74LS32 U4
U 3 1 59EFDDD2
P 8850 850
F 0 "U4" H 8850 900 50  0000 C CNN
F 1 "74AHC32" H 8850 800 50  0000 C CNN
F 2 "" H 8850 850 50  0001 C CNN
F 3 "" H 8850 850 50  0001 C CNN
	3    8850 850 
	-1   0    0    -1  
$EndComp
Text Label 9600 950  2    60   ~ 0
A14
Wire Wire Line
	9450 950  9600 950 
$Comp
L Conn_02x20_Top_Bottom J3
U 1 1 5ABBD7C9
P 9750 2450
F 0 "J3" H 9800 3450 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 9800 1350 50  0000 C CNN
F 2 "" H 9750 2450 50  0001 C CNN
F 3 "" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1550 9300 1550
Wire Wire Line
	9550 1650 9300 1650
Wire Wire Line
	9550 1750 9300 1750
Wire Wire Line
	9550 1850 9300 1850
Wire Wire Line
	9550 1950 9300 1950
Wire Wire Line
	9550 2050 9300 2050
Wire Wire Line
	9550 2150 9300 2150
Wire Wire Line
	9550 2250 9300 2250
Wire Wire Line
	9550 2350 9300 2350
Wire Wire Line
	9550 2450 9300 2450
Wire Wire Line
	9550 2550 9300 2550
Wire Wire Line
	9550 2650 9300 2650
Wire Wire Line
	9550 2750 9300 2750
Wire Wire Line
	9550 2850 9300 2850
Wire Wire Line
	9550 2950 9300 2950
Wire Wire Line
	9550 3050 9300 3050
Wire Wire Line
	9550 3150 9300 3150
Wire Wire Line
	9550 3250 9300 3250
Wire Wire Line
	9550 3350 9300 3350
Wire Wire Line
	9550 3450 9300 3450
Wire Wire Line
	10050 1550 10300 1550
Wire Wire Line
	10050 1650 10300 1650
Wire Wire Line
	10050 1750 10300 1750
Wire Wire Line
	10050 1850 10300 1850
Wire Wire Line
	10050 1950 10300 1950
Wire Wire Line
	10050 2050 10300 2050
Wire Wire Line
	10050 2150 10300 2150
Wire Wire Line
	10050 2250 10300 2250
Wire Wire Line
	10050 2350 10300 2350
Wire Wire Line
	10050 2450 10300 2450
Wire Wire Line
	10050 2550 10300 2550
Wire Wire Line
	10050 2650 10300 2650
Wire Wire Line
	10050 2750 10300 2750
Wire Wire Line
	10050 2850 10300 2850
Wire Wire Line
	10050 2950 10300 2950
Wire Wire Line
	10050 3050 10300 3050
Wire Wire Line
	10050 3150 10300 3150
Wire Wire Line
	10050 3250 10300 3250
Wire Wire Line
	10050 3350 10300 3350
Wire Wire Line
	10050 3450 10300 3450
$Comp
L VCC #PWR022
U 1 1 5ABBE8C3
P 9300 1550
F 0 "#PWR022" H 9300 1400 50  0001 C CNN
F 1 "VCC" H 9300 1700 50  0000 C CNN
F 2 "" H 9300 1550 50  0001 C CNN
F 3 "" H 9300 1550 50  0001 C CNN
	1    9300 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5ABBEB83
P 10300 3450
F 0 "#PWR023" H 10300 3200 50  0001 C CNN
F 1 "GND" H 10300 3300 50  0000 C CNN
F 2 "" H 10300 3450 50  0001 C CNN
F 3 "" H 10300 3450 50  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
Text Label 9300 1650 0    60   ~ 0
A0
Text Label 9300 1750 0    60   ~ 0
A1
Text Label 9300 1850 0    60   ~ 0
A2
Text Label 9300 1950 0    60   ~ 0
A3
Text Label 9300 2050 0    60   ~ 0
A4
Text Label 9300 2150 0    60   ~ 0
A5
Text Label 9300 2250 0    60   ~ 0
A6
Text Label 9300 2350 0    60   ~ 0
A7
Text Label 9300 2450 0    60   ~ 0
A8
Text Label 9300 2550 0    60   ~ 0
A9
Text Label 9300 2650 0    60   ~ 0
A10
Text Label 9300 2750 0    60   ~ 0
A11
Text Label 9300 2850 0    60   ~ 0
A12
Text Label 9300 2950 0    60   ~ 0
A13
Text Label 9300 3050 0    60   ~ 0
A14
Text Label 9300 3150 0    60   ~ 0
A15
Text Label 10300 1550 2    60   ~ 0
D0
Text Label 10300 1650 2    60   ~ 0
D1
Text Label 10300 1750 2    60   ~ 0
D2
Text Label 10300 1850 2    60   ~ 0
D3
Text Label 10300 1950 2    60   ~ 0
D4
Text Label 10300 2050 2    60   ~ 0
D5
Text Label 10300 2150 2    60   ~ 0
D6
Text Label 10300 2250 2    60   ~ 0
D7
Text Label 9300 3350 0    60   ~ 0
~RESET
Text Label 9300 3450 0    60   ~ 0
~INT
Text Label 10300 3350 2    60   ~ 0
CLK
Text Label 10300 3250 2    60   ~ 0
~M1
Text Label 10300 2350 2    60   ~ 0
~RD
Text Label 10300 2450 2    60   ~ 0
~WR
Text Label 10300 2550 2    60   ~ 0
~MREQ
Text Label 10300 2650 2    60   ~ 0
~IORQ
NoConn ~ 9300 3250
NoConn ~ 10300 2750
NoConn ~ 10300 2850
NoConn ~ 10300 2950
NoConn ~ 10300 3050
NoConn ~ 10300 3150
$EndSCHEMATC
