EESchema Schematic File Version 4
LIBS:z80-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 10
Title "Z80 Prototype"
Date "2018-07-20"
Rev "12"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "TODO: audio output"
$EndDescr
$Comp
L CPU:Z80CPU U1
U 1 1 59B52D2B
P 3750 2750
F 0 "U1" H 3200 4150 50  0000 L CNN
F 1 "Z80CPU" H 4000 4150 50  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket_LongPads" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
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
L Oscillator:CXO_DIP8 X1
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
L power:GND #PWR03
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
L Device:C C2
U 1 1 59B5B988
P 8050 950
F 0 "C2" H 8075 1050 50  0000 L CNN
F 1 "0.1uF" H 8075 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8088 800 50  0001 C CNN
F 3 "" H 8050 950 50  0001 C CNN
	1    8050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 59B5BA03
P 7800 1100
F 0 "#PWR04" H 7800 850 50  0001 C CNN
F 1 "GND" H 7800 950 50  0000 C CNN
F 2 "" H 7800 1100 50  0001 C CNN
F 3 "" H 7800 1100 50  0001 C CNN
	1    7800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 59B5BAAA
P 8350 950
F 0 "C3" H 8375 1050 50  0000 L CNN
F 1 "0.1uF" H 8375 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8388 800 50  0001 C CNN
F 3 "" H 8350 950 50  0001 C CNN
	1    8350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
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
L power:VCC #PWR06
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
L power:VCC #PWR08
U 1 1 59B5E4D7
P 7800 800
F 0 "#PWR08" H 7800 650 50  0001 C CNN
F 1 "VCC" H 7800 950 50  0000 C CNN
F 2 "" H 7800 800 50  0001 C CNN
F 3 "" H 7800 800 50  0001 C CNN
	1    7800 800 
	1    0    0    -1  
$EndComp
NoConn ~ 3050 3950
$Comp
L power:VCC #PWR09
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
L power:VCC #PWR010
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
L power:VCC #PWR011
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
L Memory_Flash:SST39SF010 U3
U 1 1 59B6CF84
P 6000 2750
F 0 "U3" H 6000 4050 50  0000 C CNN
F 1 "SST39SF010" H 6000 1550 50  0000 C CNN
F 2 "Housings_DIP:DIP-32_W15.24mm_Socket_LongPads" H 6000 3050 50  0001 C CNN
F 3 "" H 6000 3050 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3350
NoConn ~ 5400 3250
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
Text Label 5200 1550 0    60   ~ 0
A0
Text Label 5200 1650 0    60   ~ 0
A1
Text Label 5200 1750 0    60   ~ 0
A2
Text Label 5200 1850 0    60   ~ 0
A3
Text Label 5200 1950 0    60   ~ 0
A4
Text Label 5200 2050 0    60   ~ 0
A5
Text Label 5200 2150 0    60   ~ 0
A6
Text Label 5200 2250 0    60   ~ 0
A7
Text Label 5200 2350 0    60   ~ 0
A8
Text Label 5200 2450 0    60   ~ 0
A9
Text Label 5200 2550 0    60   ~ 0
A10
Text Label 5200 2650 0    60   ~ 0
A11
Text Label 5200 2750 0    60   ~ 0
A12
Text Label 5200 2850 0    60   ~ 0
A13
$Comp
L power:VCC #PWR012
U 1 1 59B7E032
P 5250 3550
F 0 "#PWR012" H 5250 3400 50  0001 C CNN
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
Text Label 6750 1550 2    60   ~ 0
D0
Text Label 6750 1650 2    60   ~ 0
D1
Text Label 6750 1750 2    60   ~ 0
D2
Text Label 6750 1850 2    60   ~ 0
D3
Text Label 6750 1950 2    60   ~ 0
D4
Text Label 6750 2050 2    60   ~ 0
D5
Text Label 6750 2150 2    60   ~ 0
D6
Text Label 6750 2250 2    60   ~ 0
D7
$Comp
L Device:C C4
U 1 1 59B7EC1B
P 8650 950
F 0 "C4" H 8675 1050 50  0000 L CNN
F 1 "0.1uF" H 8675 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8688 800 50  0001 C CNN
F 3 "" H 8650 950 50  0001 C CNN
	1    8650 950 
	1    0    0    -1  
$EndComp
Text Notes 8000 750  0    60   ~ 0
Near\nU1
Text Notes 8300 750  0    60   ~ 0
Near\nU2
Text Notes 8600 750  0    60   ~ 0
Near\nU3
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
$Comp
L Device:C C5
U 1 1 59B7FF72
P 8950 950
F 0 "C5" H 8975 1050 50  0000 L CNN
F 1 "0.1uF" H 8975 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8988 800 50  0001 C CNN
F 3 "" H 8950 950 50  0001 C CNN
	1    8950 950 
	1    0    0    -1  
$EndComp
Text Notes 8900 750  0    60   ~ 0
Near\nU4
$Comp
L 74xx:74LS32 U4
U 2 1 59B802F5
P 6300 850
F 0 "U4" H 6300 900 50  0000 C CNN
F 1 "74AHC32" H 6300 800 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 6300 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	2    6300 850 
	-1   0    0    -1  
$EndComp
$Comp
L headquarters:AS6C1008-55SIN U5
U 1 1 59B81085
P 8000 1450
F 0 "U5" H 8050 1500 50  0000 C CNN
F 1 "AS6C1008-55PCN" H 8050 -400 50  0000 C TNN
F 2 "Housings_DIP:DIP-32_W15.24mm_Socket_LongPads" H 8000 1450 50  0001 L BNN
F 3 "Alliance Memory" H 8000 1450 50  0001 L BNN
F 4 "AS6C1008 Series 1-Mbit 128Kx8 55ns CMOS Static RAM" H 8000 1450 50  0001 L BNN "Description"
	1    8000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 59B81476
P 8700 3150
F 0 "#PWR013" H 8700 2900 50  0001 C CNN
F 1 "GND" H 8700 3000 50  0000 C CNN
F 2 "" H 8700 3150 50  0001 C CNN
F 3 "" H 8700 3150 50  0001 C CNN
	1    8700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 59B81557
P 8700 3050
F 0 "#PWR014" H 8700 2900 50  0001 C CNN
F 1 "VCC" H 8700 3200 50  0000 C CNN
F 2 "" H 8700 3050 50  0001 C CNN
F 3 "" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
Text Label 8750 1550 2    60   ~ 0
D0
Text Label 8750 1650 2    60   ~ 0
D1
Text Label 8750 1750 2    60   ~ 0
D2
Text Label 8750 1850 2    60   ~ 0
D3
Text Label 8750 1950 2    60   ~ 0
D4
Text Label 8750 2050 2    60   ~ 0
D5
Text Label 8750 2150 2    60   ~ 0
D6
Text Label 8750 2250 2    60   ~ 0
D7
Text Label 7300 1550 0    60   ~ 0
A0
Text Label 7300 1650 0    60   ~ 0
A1
Text Label 7300 1750 0    60   ~ 0
A2
Text Label 7300 1850 0    60   ~ 0
A3
Text Label 7300 1950 0    60   ~ 0
A4
Text Label 7300 2050 0    60   ~ 0
A5
Text Label 7300 2150 0    60   ~ 0
A6
Text Label 7300 2250 0    60   ~ 0
A7
Text Label 7300 2350 0    60   ~ 0
A8
Text Label 7300 2450 0    60   ~ 0
A9
Text Label 7300 2550 0    60   ~ 0
A10
Text Label 7300 2650 0    60   ~ 0
A11
Text Label 7300 2750 0    60   ~ 0
A12
Text Label 7300 2850 0    60   ~ 0
A13
Text Label 7300 2950 0    60   ~ 0
PA14
Text Label 7300 3050 0    60   ~ 0
PA15
Text Label 5200 2950 0    60   ~ 0
PA14
Text Label 5200 3050 0    60   ~ 0
PA15
Text Label 8750 2450 2    60   ~ 0
~WR
Text Label 8750 2550 2    60   ~ 0
~RD
NoConn ~ 8600 2950
$Comp
L Device:C C6
U 1 1 59B8393A
P 9250 950
F 0 "C6" H 9275 1050 50  0000 L CNN
F 1 "0.1uF" H 9275 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9288 800 50  0001 C CNN
F 3 "" H 9250 950 50  0001 C CNN
	1    9250 950 
	1    0    0    -1  
$EndComp
Text Notes 9200 750  0    60   ~ 0
Near\nU5
Text Label 8900 2750 2    60   ~ 0
~MREQ
Text Label 2750 5550 0    60   ~ 0
~IORQ
$Comp
L Device:C C7
U 1 1 59B8A7DC
P 9550 950
F 0 "C7" H 9575 1050 50  0000 L CNN
F 1 "0.1uF" H 9575 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9588 800 50  0001 C CNN
F 3 "" H 9550 950 50  0001 C CNN
	1    9550 950 
	1    0    0    -1  
$EndComp
Text Notes 9500 750  0    60   ~ 0
Near\nU6
Text Label 2850 5050 0    60   ~ 0
A4
Text Label 2850 5150 0    60   ~ 0
A5
Text Label 2850 5250 0    60   ~ 0
A6
Text Label 2750 2250 0    60   ~ 0
~INT
Text Label 2750 2550 0    60   ~ 0
~M1
Text Label 2750 1550 0    60   ~ 0
~RESET
Text Label 2750 1850 0    60   ~ 0
CLK
Text Label 2850 5350 0    60   ~ 0
A7
Text Label 4300 5050 2    60   ~ 0
~IORQ0
Text Label 4300 5150 2    60   ~ 0
~IORQ1
Text Label 4300 5250 2    60   ~ 0
~IORQ2
$Sheet
S 5050 4650 1000 650 
U 59D68A0C
F0 "Joystick Ports" 60
F1 "joystick.sch" 60
F2 "~RD" I L 5050 4900 60 
F3 "~IORQ0" I L 5050 5050 60 
F4 "~IORQ1" I L 5050 5150 60 
F5 "D[0..7]" B L 5050 4750 60 
$EndSheet
Text Label 4300 5350 2    60   ~ 0
~IORQ3
Text Label 4850 4900 0    60   ~ 0
~RD
Text Label 4850 5800 0    60   ~ 0
~WR
$Sheet
S 5050 5550 1000 700 
U 59D6B088
F0 "7-Seg Display" 60
F1 "7-Segment Display.sch" 60
F2 "~WR" I L 5050 5800 60 
F3 "~IORQ0" I L 5050 5950 60 
F4 "~IORQ1" I L 5050 6050 60 
F5 "D[0..7]" B L 5050 5650 60 
F6 "~RESET" I L 5050 6150 60 
$EndSheet
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
F8 "IEI" I R 7650 5100 60 
F9 "IEO" O R 7650 5200 60 
F10 "CLK" I L 6850 5200 60 
F11 "D[0..7]" B L 6850 4300 60 
F12 "C/~D" I L 6850 4900 60 
F13 "B/~A" I L 6850 5000 60 
F14 "SCLKA" I R 7650 4400 60 
F15 "SCLKB" I R 7650 4500 60 
F16 "~DTRA" O R 7650 4650 60 
F17 "~DTRB" O R 7650 4750 60 
$EndSheet
Text Label 6550 4400 0    60   ~ 0
~IORQ2
Text Label 6550 4500 0    60   ~ 0
~RESET
Text Label 6550 4600 0    60   ~ 0
~M1
Text Label 6550 4700 0    60   ~ 0
~IORQ
Text Label 6550 4800 0    60   ~ 0
~RD
Text Label 6550 5100 0    60   ~ 0
~INT
Text Label 6550 5200 0    60   ~ 0
CLK
$Comp
L power:VCC #PWR018
U 1 1 59D7BD8F
P 7750 5100
F 0 "#PWR018" H 7750 4950 50  0001 C CNN
F 1 "VCC" H 7750 5250 50  0000 C CNN
F 2 "" H 7750 5100 50  0001 C CNN
F 3 "" H 7750 5100 50  0001 C CNN
	1    7750 5100
	1    0    0    -1  
$EndComp
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
F10 "IEI" I R 7650 5650 60 
F11 "IEO" O R 7650 5750 60 
F12 "CLK" I L 6850 6550 60 
F13 "~RESET" I L 6850 5850 60 
F14 "PIOA6" B R 7650 6450 60 
F15 "PIOA7" B R 7650 6550 60 
$EndSheet
Text Label 6550 5750 0    60   ~ 0
~IORQ3
Text Label 6550 5850 0    60   ~ 0
~RESET
Text Label 6550 5950 0    60   ~ 0
~M1
Text Label 6550 6050 0    60   ~ 0
~IORQ
Text Label 6550 6150 0    60   ~ 0
~RD
Text Label 6550 6450 0    60   ~ 0
~INT
Text Label 6550 6550 0    60   ~ 0
CLK
Text Label 6550 6250 0    60   ~ 0
A1
Text Label 6550 6350 0    60   ~ 0
A0
$Comp
L Device:R R29
U 1 1 59D85756
P 2600 2250
F 0 "R29" V 2680 2250 50  0000 C CNN
F 1 "10K" V 2600 2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2530 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 59D85B4D
P 2450 2250
F 0 "#PWR019" H 2450 2100 50  0001 C CNN
F 1 "VCC" H 2450 2400 50  0000 C CNN
F 2 "" H 2450 2250 50  0001 C CNN
F 3 "" H 2450 2250 50  0001 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 59D876BD
P 9850 950
F 0 "C26" H 9875 1050 50  0000 L CNN
F 1 "0.1uF" H 9875 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9888 800 50  0001 C CNN
F 3 "" H 9850 950 50  0001 C CNN
	1    9850 950 
	1    0    0    -1  
$EndComp
Text Notes 9800 750  0    60   ~ 0
Near\nU16
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
F11 "IEI" I L 8350 5100 60 
F12 "IEO" O L 8350 5200 60 
F13 "CLK" I R 9150 5200 60 
F14 "CCLK0" O L 8350 4400 60 
F15 "CCLK1" O L 8350 4500 60 
$EndSheet
Text Label 4300 5450 2    60   ~ 0
~IORQ4
Text Label 9450 4400 2    60   ~ 0
~IORQ4
Text Label 9450 4500 2    60   ~ 0
~RESET
Text Label 9450 4600 2    60   ~ 0
~M1
Text Label 9450 4700 2    60   ~ 0
~IORQ
Text Label 9450 4800 2    60   ~ 0
~RD
Text Label 9450 5100 2    60   ~ 0
~INT
Text Label 9450 5200 2    60   ~ 0
CLK
Text Label 9450 4900 2    60   ~ 0
A0
Text Label 9450 5000 2    60   ~ 0
A1
$Sheet
S 700  850  550  250 
U 59EFC926
F0 "Power, Reset, Spares" 60
F1 "power_reset_spares.sch" 60
F2 "~RESET" O R 1250 1000 60 
$EndSheet
$Comp
L power:VCC #PWR020
U 1 1 5ABBE8C3
P 9300 1550
F 0 "#PWR020" H 9300 1400 50  0001 C CNN
F 1 "VCC" H 9300 1700 50  0000 C CNN
F 2 "" H 9300 1550 50  0001 C CNN
F 3 "" H 9300 1550 50  0001 C CNN
	1    9300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5ABBEB83
P 10300 3450
F 0 "#PWR021" H 10300 3200 50  0001 C CNN
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
Text Label 10300 2750 2    60   ~ 0
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
NoConn ~ 10300 3150
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5AC5425B
P 9750 2450
F 0 "J3" H 9800 3450 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9800 1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 9750 2450 50  0001 C CNN
F 3 "" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
Text Label 5200 4300 0    60   ~ 0
D[0..7]
NoConn ~ 9300 3450
Text Label 4300 5550 2    60   ~ 0
~IORQ5
Text Label 4300 5650 2    60   ~ 0
~IORQ6
Text Label 4300 5750 2    60   ~ 0
~IORQ7
Text Label 10400 2850 2    60   ~ 0
~IORQ15
Text Label 10400 2950 2    60   ~ 0
~IORQ14
Text Label 10400 3050 2    60   ~ 0
~IORQ13
$Sheet
S 8350 5550 800  1100
U 5B4CDFE2
F0 "LCD" 60
F1 "LCD.sch" 60
F2 "D[0..7]" B R 9150 5650 60 
F3 "~RD" I R 9150 5750 60 
F4 "~WR" I R 9150 5850 60 
F5 "~CS" I R 9150 5950 60 
F6 "D/~C" I R 9150 6050 60 
F7 "~WAIT" O L 8350 6550 60 
F8 "INT" O L 8350 6450 60 
F9 "~RESET" I R 9150 6150 60 
F10 "BL" I L 8350 5650 60 
$EndSheet
Text Label 9450 5750 2    60   ~ 0
~RD
Text Label 9450 5850 2    60   ~ 0
~WR
Text Label 9450 5950 2    60   ~ 0
~IORQ5
Text Label 9450 6050 2    60   ~ 0
A0
Text Label 9450 6150 2    60   ~ 0
~RESET
NoConn ~ 7700 4750
NoConn ~ 8300 5200
Text Label 700  2700 0    60   ~ 0
D[0..3]
Text Label 700  2800 0    60   ~ 0
A0
Text Label 700  2900 0    60   ~ 0
A1
Text Label 700  3000 0    60   ~ 0
~WR
Text Label 700  3100 0    60   ~ 0
A14
Text Label 700  3200 0    60   ~ 0
A15
Text Label 700  3450 0    60   ~ 0
~IORQ6
Text Label 900  4900 3    60   ~ 0
~IORQ7
Text Label 700  3300 0    60   ~ 0
PA[14..17]
Wire Wire Line
	2150 1850 3050 1850
Wire Wire Line
	1850 1550 1550 1550
Wire Wire Line
	1550 1550 1550 1850
Connection ~ 8050 800 
Connection ~ 8050 1100
Wire Wire Line
	2950 3850 3050 3850
Wire Wire Line
	3050 2750 2950 2750
Wire Wire Line
	3050 2150 2950 2150
Wire Wire Line
	5200 3150 5400 3150
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
	5400 1550 5200 1550
Wire Wire Line
	5400 1650 5200 1650
Wire Wire Line
	5400 1750 5200 1750
Wire Wire Line
	5400 1850 5200 1850
Wire Wire Line
	5400 1950 5200 1950
Wire Wire Line
	5400 2050 5200 2050
Wire Wire Line
	5400 2150 5200 2150
Wire Wire Line
	5400 2250 5200 2250
Wire Wire Line
	5400 2350 5200 2350
Wire Wire Line
	5400 2450 5200 2450
Wire Wire Line
	5400 2550 5200 2550
Wire Wire Line
	5400 2650 5200 2650
Wire Wire Line
	5400 2750 5200 2750
Wire Wire Line
	5400 2850 5200 2850
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
Connection ~ 8350 800 
Connection ~ 8350 1100
Wire Wire Line
	2750 3250 3050 3250
Wire Wire Line
	2750 3350 3050 3350
Wire Wire Line
	2750 3450 3050 3450
Wire Wire Line
	2750 3550 3050 3550
Wire Wire Line
	5400 3850 5200 3850
Connection ~ 8650 800 
Connection ~ 8650 1100
Wire Wire Line
	5000 3750 5400 3750
Wire Wire Line
	8600 3150 8700 3150
Wire Wire Line
	8700 3050 8600 3050
Wire Wire Line
	7500 3150 7300 3150
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
Wire Wire Line
	7500 1550 7300 1550
Wire Wire Line
	7500 1650 7300 1650
Wire Wire Line
	7500 1750 7300 1750
Wire Wire Line
	7500 1850 7300 1850
Wire Wire Line
	7500 1950 7300 1950
Wire Wire Line
	7500 2050 7300 2050
Wire Wire Line
	7500 2150 7300 2150
Wire Wire Line
	7500 2250 7300 2250
Wire Wire Line
	7500 2350 7300 2350
Wire Wire Line
	7500 2450 7300 2450
Wire Wire Line
	7500 2550 7300 2550
Wire Wire Line
	7500 2650 7300 2650
Wire Wire Line
	7500 2750 7300 2750
Wire Wire Line
	7500 2850 7300 2850
Wire Wire Line
	7500 2950 7300 2950
Wire Wire Line
	7500 3050 7300 3050
Wire Wire Line
	5400 2950 5200 2950
Wire Wire Line
	5400 3050 5200 3050
Wire Wire Line
	8600 2550 8750 2550
Wire Wire Line
	8600 2450 8750 2450
Connection ~ 8950 800 
Connection ~ 8950 1100
Wire Wire Line
	8600 2750 8900 2750
Wire Wire Line
	8600 2650 8900 2650
Connection ~ 9250 800 
Connection ~ 9250 1100
Wire Wire Line
	2950 5050 2850 5050
Wire Wire Line
	2950 5150 2850 5150
Wire Wire Line
	2950 5250 2850 5250
Wire Wire Line
	5000 850  5000 3750
Wire Wire Line
	3050 2550 2750 2550
Wire Wire Line
	2950 5350 2850 5350
Wire Wire Line
	5050 4900 4850 4900
Wire Bus Line
	4750 5650 5050 5650
Wire Bus Line
	4750 4750 5050 4750
Wire Wire Line
	5050 5800 4850 5800
Wire Wire Line
	4650 5950 5050 5950
Wire Wire Line
	4550 6050 5050 6050
Connection ~ 4750 4750
Wire Bus Line
	4750 4300 6350 4300
Connection ~ 4750 4300
Wire Wire Line
	6850 4400 6550 4400
Wire Wire Line
	6850 4500 6550 4500
Wire Wire Line
	6850 4600 6550 4600
Wire Wire Line
	6850 4700 6550 4700
Wire Wire Line
	6850 4800 6550 4800
Wire Wire Line
	6850 5100 6550 5100
Wire Wire Line
	6850 5200 6550 5200
Wire Wire Line
	7650 5200 7700 5200
Wire Wire Line
	7750 5100 7650 5100
Wire Wire Line
	6850 4900 6550 4900
Wire Wire Line
	6850 5000 6550 5000
Wire Wire Line
	7800 800  8050 800 
Wire Wire Line
	7800 1100 8050 1100
Wire Bus Line
	6350 5650 6850 5650
Wire Bus Line
	6350 4050 6350 4300
Connection ~ 6350 4300
Wire Wire Line
	6850 5750 6550 5750
Wire Wire Line
	6850 5850 6550 5850
Wire Wire Line
	6850 5950 6550 5950
Wire Wire Line
	6850 6050 6550 6050
Wire Wire Line
	6850 6150 6550 6150
Wire Wire Line
	6850 6450 6550 6450
Wire Wire Line
	6850 6550 6550 6550
Wire Wire Line
	6850 6250 6550 6250
Wire Wire Line
	6850 6350 6550 6350
Wire Wire Line
	7700 5200 7700 5650
Wire Wire Line
	7700 5650 7650 5650
Wire Wire Line
	3050 2250 2750 2250
Connection ~ 9550 800 
Connection ~ 9550 1100
Wire Wire Line
	9150 4400 9450 4400
Wire Wire Line
	9150 4500 9450 4500
Wire Wire Line
	9150 4600 9450 4600
Wire Wire Line
	9150 4700 9450 4700
Wire Wire Line
	9150 4800 9450 4800
Wire Wire Line
	9150 5100 9450 5100
Wire Wire Line
	9150 5200 9450 5200
Wire Wire Line
	9150 4900 9450 4900
Wire Wire Line
	9150 5000 9450 5000
Wire Wire Line
	7650 5750 8250 5750
Wire Wire Line
	8250 5750 8250 5100
Wire Wire Line
	8250 5100 8350 5100
Wire Wire Line
	8350 4400 7650 4400
Wire Wire Line
	8350 4500 7650 4500
Wire Bus Line
	6350 4050 9650 4050
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
	10050 3150 10300 3150
Wire Wire Line
	10050 3250 10300 3250
Wire Wire Line
	10050 3350 10300 3350
Wire Wire Line
	10050 3450 10300 3450
Wire Bus Line
	9650 4050 9650 4300
Wire Bus Line
	9650 4300 9150 4300
Wire Bus Line
	9650 5650 9150 5650
Connection ~ 9650 4300
Wire Wire Line
	9150 5750 9450 5750
Wire Wire Line
	9150 5850 9450 5850
Wire Wire Line
	9150 5950 9450 5950
Wire Wire Line
	9150 6050 9450 6050
Wire Wire Line
	9150 6150 9450 6150
Wire Wire Line
	7650 4650 8000 4650
Wire Wire Line
	8000 4650 8000 5650
Wire Wire Line
	8000 5650 8350 5650
Wire Wire Line
	7650 4750 7700 4750
Wire Wire Line
	8350 5200 8300 5200
Wire Wire Line
	8350 6450 7650 6450
Wire Wire Line
	8350 6550 7650 6550
Wire Wire Line
	700  2800 1250 2800
Wire Wire Line
	700  2900 1250 2900
Wire Wire Line
	700  3000 1250 3000
Wire Wire Line
	700  3100 1250 3100
Wire Wire Line
	700  3200 1250 3200
Wire Wire Line
	700  3450 1250 3450
Wire Wire Line
	900  4900 900  5250
Wire Bus Line
	1250 2700 700  2700
Wire Bus Line
	1250 3300 700  3300
Text Label 5200 3150 0    60   ~ 0
PA16
Text Label 7300 3150 0    60   ~ 0
PA16
Text Label 8900 2650 2    60   ~ 0
PA17
Text Label 7050 950  2    60   ~ 0
PA17
Wire Wire Line
	8050 800  8350 800 
Wire Wire Line
	8050 1100 8350 1100
Wire Wire Line
	8350 800  8650 800 
Wire Wire Line
	8350 1100 8650 1100
Wire Wire Line
	8650 800  8950 800 
Wire Wire Line
	8650 1100 8950 1100
Wire Wire Line
	8950 800  9250 800 
Wire Wire Line
	8950 1100 9250 1100
Wire Wire Line
	9250 800  9550 800 
Wire Wire Line
	9250 1100 9550 1100
Wire Wire Line
	4650 5050 5050 5050
Wire Bus Line
	4750 4750 4750 5650
Wire Bus Line
	4750 4300 4750 4750
Wire Bus Line
	6350 4300 6850 4300
Wire Bus Line
	6350 4300 6350 5650
Wire Wire Line
	9550 800  9850 800 
Wire Wire Line
	9550 1100 9850 1100
Wire Bus Line
	9650 4300 9650 5650
Wire Wire Line
	6600 750  7050 750 
Wire Wire Line
	6600 950  7050 950 
Wire Wire Line
	5000 850  6000 850 
$Comp
L 74xx:74LS154 U6
U 1 1 5C5B05CC
P 3450 5750
F 0 "U6" H 3200 6600 50  0000 C CNN
F 1 "74HC154" H 3650 6600 50  0000 C CNN
F 2 "" H 3450 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS154" H 3450 5750 50  0001 C CNN
	1    3450 5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5C680271
P 3450 4750
F 0 "#PWR016" H 3450 4600 50  0001 C CNN
F 1 "VCC" H 3467 4923 50  0000 C CNN
F 2 "" H 3450 4750 50  0001 C CNN
F 3 "" H 3450 4750 50  0001 C CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C68032D
P 3450 6850
F 0 "#PWR017" H 3450 6600 50  0001 C CNN
F 1 "GND" H 3455 6677 50  0000 C CNN
F 2 "" H 3450 6850 50  0001 C CNN
F 3 "" H 3450 6850 50  0001 C CNN
	1    3450 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C6BAA00
P 2950 5650
F 0 "#PWR015" H 2950 5400 50  0001 C CNN
F 1 "GND" H 2955 5477 50  0000 C CNN
F 2 "" H 2950 5650 50  0001 C CNN
F 3 "" H 2950 5650 50  0001 C CNN
	1    2950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5550 2950 5550
Wire Wire Line
	4550 5150 5050 5150
Wire Wire Line
	3950 5050 4650 5050
Wire Wire Line
	3950 5150 4550 5150
Connection ~ 4650 5050
Connection ~ 4550 5150
Text Label 4300 5850 2    60   ~ 0
~IORQ8
Text Label 4300 5950 2    60   ~ 0
~IORQ9
Text Label 4300 6050 2    60   ~ 0
~IORQ10
Text Label 4300 6150 2    60   ~ 0
~IORQ11
Text Label 4300 6250 2    60   ~ 0
~IORQ12
Text Label 4300 6350 2    60   ~ 0
~IORQ13
Text Label 4300 6450 2    60   ~ 0
~IORQ14
Text Label 4300 6550 2    60   ~ 0
~IORQ15
Wire Wire Line
	4650 5050 4650 5950
Wire Wire Line
	4550 5150 4550 6050
Wire Wire Line
	3950 5250 4300 5250
Wire Wire Line
	3950 5350 4300 5350
Wire Wire Line
	3950 5450 4300 5450
Wire Wire Line
	3950 5550 4300 5550
Wire Wire Line
	3950 5650 4300 5650
Wire Wire Line
	3950 5750 4300 5750
Wire Wire Line
	3950 5850 4300 5850
Wire Wire Line
	3950 5950 4300 5950
Wire Wire Line
	3950 6150 4300 6150
Wire Wire Line
	3950 6050 4300 6050
Wire Wire Line
	3950 6250 4300 6250
Wire Wire Line
	3950 6550 4300 6550
Wire Wire Line
	3950 6450 4300 6450
Wire Wire Line
	3950 6350 4300 6350
Connection ~ 1850 1550
Wire Wire Line
	2750 1550 3050 1550
Wire Wire Line
	1250 1000 2750 1000
Wire Wire Line
	2750 1000 2750 1550
Wire Wire Line
	10050 2850 10400 2850
Wire Wire Line
	10050 2950 10400 2950
Wire Wire Line
	10050 3050 10400 3050
$Sheet
S 5050 6650 750  1100
U 5CC65FE6
F0 "SD card" 60
F1 "SDcard.sch" 60
$EndSheet
$Comp
L 74xx:74LS273 U23
U 1 1 5C3D0091
P 1900 5550
F 0 "U23" H 1650 6200 50  0000 C CNN
F 1 "74AC273" H 2100 4900 50  0000 C CNN
F 2 "" H 1900 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 1900 5550 50  0001 C CNN
	1    1900 5550
	1    0    0    -1  
$EndComp
Text Label 1100 6050 0    60   ~ 0
~RESET
Text Label 1250 5050 0    60   ~ 0
D0
Text Label 1250 5150 0    60   ~ 0
D1
Text Label 1250 5250 0    60   ~ 0
D2
Text Label 1250 5350 0    60   ~ 0
D3
Text Label 1250 5450 0    60   ~ 0
D4
Text Label 1250 5550 0    60   ~ 0
D5
Text Label 1250 5650 0    60   ~ 0
D6
Text Label 1250 5750 0    60   ~ 0
D7
Wire Wire Line
	1400 5050 1250 5050
Wire Wire Line
	1400 5150 1250 5150
Wire Wire Line
	1400 5250 1250 5250
Wire Wire Line
	1400 5350 1250 5350
Wire Wire Line
	1400 5450 1250 5450
Wire Wire Line
	1400 5550 1250 5550
Wire Wire Line
	1400 5650 1250 5650
Wire Wire Line
	1400 5750 1250 5750
Wire Wire Line
	1100 6050 1400 6050
Wire Wire Line
	2400 5050 2650 5050
Wire Wire Line
	2400 5150 2650 5150
Wire Wire Line
	2400 5250 2650 5250
Wire Wire Line
	2400 5350 2650 5350
Wire Wire Line
	2400 5450 2650 5450
Wire Wire Line
	2400 5550 2650 5550
Wire Wire Line
	2400 5650 2650 5650
Wire Wire Line
	2400 5750 2650 5750
Text Label 2650 5050 2    60   ~ 0
MMUEN
Text Label 2650 5150 2    60   ~ 0
CTL1
Text Label 2650 5250 2    60   ~ 0
CTL2
Text Label 2650 5350 2    60   ~ 0
CTL3
Text Label 2650 5450 2    60   ~ 0
CTL4
Text Label 2650 5550 2    60   ~ 0
CTL5
Text Label 2650 5650 2    60   ~ 0
CTL6
Text Label 2650 5750 2    60   ~ 0
CTL7
$Comp
L 74xx:74HC02 U9
U 3 1 5C48A0C2
P 1000 5550
AR Path="/5C48A0C2" Ref="U9"  Part="3" 
AR Path="/5B502B1D/5C48A0C2" Ref="U?"  Part="3" 
F 0 "U9" V 950 5550 50  0000 C CNN
F 1 "74AHC02" V 1050 5550 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 1000 5550 50  0001 C CNN
F 3 "" H 1000 5550 50  0001 C CNN
	3    1000 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR098
U 1 1 5C4ED809
P 1900 6350
F 0 "#PWR098" H 1900 6100 50  0001 C CNN
F 1 "GND" H 1905 6177 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "" H 1900 6350 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR097
U 1 1 5C4EDEE4
P 1900 4750
F 0 "#PWR097" H 1900 4600 50  0001 C CNN
F 1 "VCC" H 1917 4923 50  0000 C CNN
F 2 "" H 1900 4750 50  0001 C CNN
F 3 "" H 1900 4750 50  0001 C CNN
	1    1900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5950 1400 5850
Wire Wire Line
	1400 5850 1000 5850
Wire Wire Line
	1100 5250 1100 4900
Text Label 1100 4900 3    60   ~ 0
~WR
$Sheet
S 1250 2600 800  1050
U 5B502B1D
F0 "MMU" 60
F1 "MMU.sch" 60
F2 "D[0..3]" I L 1250 2700 60 
F3 "WA0" I L 1250 2800 60 
F4 "WA1" I L 1250 2900 60 
F5 "~WR" I L 1250 3000 60 
F6 "RA0" I L 1250 3100 60 
F7 "RA1" I L 1250 3200 60 
F8 "A[14..17]" O L 1250 3300 60 
F9 "~IORQMMU" I L 1250 3450 60 
F10 "MMUENA" I L 1250 3550 60 
$EndSheet
Wire Wire Line
	1250 3550 700  3550
Text Label 700  3550 0    60   ~ 0
MMUEN
$Comp
L Device:C C38
U 1 1 5C71221D
P 10150 950
F 0 "C38" H 10175 1050 50  0000 L CNN
F 1 "0.1uF" H 10175 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10188 800 50  0001 C CNN
F 3 "" H 10150 950 50  0001 C CNN
	1    10150 950 
	1    0    0    -1  
$EndComp
Text Notes 10100 750  0    60   ~ 0
Near\nU23
Wire Wire Line
	9850 800  10150 800 
Wire Wire Line
	9850 1100 10150 1100
Connection ~ 9850 800 
Connection ~ 9850 1100
Text Label 4750 6150 0    60   ~ 0
~RESET
Wire Wire Line
	4750 6150 5050 6150
Wire Bus Line
	4750 3350 4750 4300
Wire Bus Line
	4750 1650 4750 3150
$EndSCHEMATC
