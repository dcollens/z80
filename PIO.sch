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
Sheet 5 7
Title "PIO, PS/2 Keyboard Port"
Date "2018-06-12"
Rev "10"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z84C20 U15
U 1 1 59D82949
P 3400 3000
F 0 "U15" H 3000 4091 50  0000 L TNN
F 1 "Z84C20" H 3800 4100 50  0000 R TNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket_LongPads" H 3800 4100 60  0001 C CNN
F 3 "" H 3800 4100 60  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
Text HLabel 1500 1900 0    60   BiDi ~ 0
D[0..7]
Text HLabel 1500 3000 0    60   Input ~ 0
~CE
Text HLabel 1200 2500 0    60   Input ~ 0
~M1
Text HLabel 1500 3200 0    60   Input ~ 0
~IORQ
Text HLabel 1500 3300 0    60   Input ~ 0
~RD
Text HLabel 1500 3500 0    60   Input ~ 0
C/~D
Text HLabel 1500 3600 0    60   Input ~ 0
B/~A
Text HLabel 1500 3800 0    60   Output ~ 0
~INT
Text HLabel 1500 3900 0    60   Input ~ 0
IEI
Text HLabel 1500 4000 0    60   Output ~ 0
IEO
Text HLabel 1500 4200 0    60   Input ~ 0
CLK
Text Label 2650 2100 0    60   ~ 0
D0
Text Label 2650 2200 0    60   ~ 0
D1
Text Label 2650 2300 0    60   ~ 0
D2
Text Label 2650 2400 0    60   ~ 0
D3
Text Label 2650 2500 0    60   ~ 0
D4
Text Label 2650 2600 0    60   ~ 0
D5
Text Label 2650 2700 0    60   ~ 0
D6
Text Label 2650 2800 0    60   ~ 0
D7
Entry Wire Line
	2650 2100 2550 2000
Entry Wire Line
	2650 2200 2550 2100
Entry Wire Line
	2650 2300 2550 2200
Entry Wire Line
	2650 2400 2550 2300
Entry Wire Line
	2650 2500 2550 2400
Entry Wire Line
	2650 2600 2550 2500
Entry Wire Line
	2650 2700 2550 2600
Entry Wire Line
	2650 2800 2550 2700
Text HLabel 1200 2300 0    60   Input ~ 0
~RESET
$Comp
L GND #PWR055
U 1 1 59D82A6F
P 3400 4500
F 0 "#PWR055" H 3400 4250 50  0001 C CNN
F 1 "GND" H 3400 4350 50  0000 C CNN
F 2 "" H 3400 4500 50  0001 C CNN
F 3 "" H 3400 4500 50  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR056
U 1 1 59D82A86
P 3400 1800
F 0 "#PWR056" H 3400 1650 50  0001 C CNN
F 1 "VCC" H 3400 1950 50  0000 C CNN
F 2 "" H 3400 1800 50  0001 C CNN
F 3 "" H 3400 1800 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U16
U 1 1 59D86E33
P 1850 2400
F 0 "U16" H 1850 2450 50  0000 C CNN
F 1 "74AHC08" H 1850 2350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 1850 2400 50  0001 C CNN
F 3 "" H 1850 2400 50  0001 C CNN
	1    1850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3000 1500 3000
Wire Wire Line
	2800 3200 1500 3200
Wire Wire Line
	2800 3300 1500 3300
Wire Wire Line
	2800 3500 1500 3500
Wire Wire Line
	2800 3600 1500 3600
Wire Wire Line
	2800 3800 1500 3800
Wire Wire Line
	2800 3900 1500 3900
Wire Wire Line
	2800 4000 1500 4000
Wire Wire Line
	2800 4200 1500 4200
Wire Wire Line
	2800 2100 2650 2100
Wire Wire Line
	2800 2200 2650 2200
Wire Wire Line
	2800 2300 2650 2300
Wire Wire Line
	2800 2400 2650 2400
Wire Wire Line
	2800 2500 2650 2500
Wire Wire Line
	2800 2600 2650 2600
Wire Wire Line
	2800 2700 2650 2700
Wire Wire Line
	2800 2800 2650 2800
Wire Bus Line
	2550 1900 2550 2700
Wire Bus Line
	2550 1900 1500 1900
Wire Wire Line
	1200 2300 1250 2300
Wire Wire Line
	1200 2500 1250 2500
Wire Wire Line
	2450 2400 2450 3100
Wire Wire Line
	2450 3100 2800 3100
NoConn ~ 4000 2950
NoConn ~ 4000 4100
$Comp
L VCC #PWR057
U 1 1 59D87E9E
P 4100 3050
F 0 "#PWR057" H 4100 2900 50  0001 C CNN
F 1 "VCC" H 4100 3200 50  0000 C CNN
F 2 "" H 4100 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR058
U 1 1 59D87EBB
P 4100 4200
F 0 "#PWR058" H 4100 4050 50  0001 C CNN
F 1 "VCC" H 4100 4350 50  0000 C CNN
F 2 "" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3050 4100 3050
Wire Wire Line
	4000 4200 4100 4200
Wire Wire Line
	4000 2200 4350 2200
Wire Wire Line
	4000 2300 4350 2300
Wire Wire Line
	4000 2400 4350 2400
Wire Wire Line
	4000 2500 4350 2500
Wire Wire Line
	4000 2600 4350 2600
Wire Wire Line
	4000 2700 4350 2700
Wire Wire Line
	4000 2800 4350 2800
Wire Wire Line
	4000 3350 4950 3350
Wire Wire Line
	4000 3450 5000 3450
Wire Wire Line
	4000 3550 5050 3550
Wire Wire Line
	4000 3650 5100 3650
Wire Wire Line
	4000 3750 5150 3750
Wire Wire Line
	4000 3850 5200 3850
Wire Wire Line
	4000 3950 5250 3950
$Comp
L VCC #PWR059
U 1 1 59D89429
P 9400 1200
F 0 "#PWR059" H 9400 1050 50  0001 C CNN
F 1 "VCC" H 9400 1350 50  0000 C CNN
F 2 "" H 9400 1200 50  0001 C CNN
F 3 "" H 9400 1200 50  0001 C CNN
	1    9400 1200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 59D8949E
P 10200 1200
F 0 "#PWR060" H 10200 950 50  0001 C CNN
F 1 "GND" H 10200 1050 50  0000 C CNN
F 2 "" H 10200 1200 50  0001 C CNN
F 3 "" H 10200 1200 50  0001 C CNN
	1    10200 1200
	1    0    0    -1  
$EndComp
Text Label 6150 1100 0    60   ~ 0
~KCLK
Text Label 6150 1400 0    60   ~ 0
~KDAT
Wire Wire Line
	4000 2100 4350 2100
Wire Wire Line
	4850 2100 4900 2100
Wire Wire Line
	4850 2200 4950 2200
Wire Wire Line
	4850 2300 5000 2300
Wire Wire Line
	4850 2400 5050 2400
Wire Wire Line
	4850 2500 5100 2500
Wire Wire Line
	4850 2600 5150 2600
Wire Wire Line
	4850 2700 5200 2700
Wire Wire Line
	4850 2800 5250 2800
Wire Wire Line
	4900 2100 4900 3250
Wire Wire Line
	4950 2200 4950 3350
Wire Wire Line
	5000 2300 5000 3450
Wire Wire Line
	5050 2400 5050 3550
Wire Wire Line
	5100 2500 5100 3650
Wire Wire Line
	5150 2600 5150 3750
Wire Wire Line
	5200 2700 5200 3850
Wire Wire Line
	5250 2800 5250 3950
Wire Wire Line
	4000 1100 4000 2100
Connection ~ 4000 2100
Connection ~ 4050 2200
$Comp
L R R30
U 1 1 59D8DE24
P 9650 2700
F 0 "R30" V 9730 2700 50  0000 C CNN
F 1 "10K" V 9650 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9580 2700 50  0001 C CNN
F 3 "" H 9650 2700 50  0001 C CNN
	1    9650 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR061
U 1 1 59D8DE5C
P 9650 2550
F 0 "#PWR061" H 9650 2400 50  0001 C CNN
F 1 "VCC" H 9650 2700 50  0000 C CNN
F 2 "" H 9650 2550 50  0001 C CNN
F 3 "" H 9650 2550 50  0001 C CNN
	1    9650 2550
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 59D8DE95
P 9650 2000
F 0 "R31" V 9730 2000 50  0000 C CNN
F 1 "10K" V 9650 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9580 2000 50  0001 C CNN
F 3 "" H 9650 2000 50  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR062
U 1 1 59D8DE9B
P 9650 1850
F 0 "#PWR062" H 9650 1700 50  0001 C CNN
F 1 "VCC" H 9650 2000 50  0000 C CNN
F 2 "" H 9650 1850 50  0001 C CNN
F 3 "" H 9650 1850 50  0001 C CNN
	1    9650 1850
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 59D929D9
P 4700 6700
F 0 "C25" H 4725 6800 50  0000 L CNN
F 1 "0.1uF" H 4725 6600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4738 6550 50  0001 C CNN
F 3 "" H 4700 6700 50  0001 C CNN
	1    4700 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 59D929E0
P 4450 6850
F 0 "#PWR063" H 4450 6600 50  0001 C CNN
F 1 "GND" H 4450 6700 50  0000 C CNN
F 2 "" H 4450 6850 50  0001 C CNN
F 3 "" H 4450 6850 50  0001 C CNN
	1    4450 6850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR064
U 1 1 59D929ED
P 4450 6550
F 0 "#PWR064" H 4450 6400 50  0001 C CNN
F 1 "VCC" H 4450 6700 50  0000 C CNN
F 2 "" H 4450 6550 50  0001 C CNN
F 3 "" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
Text Notes 4650 6500 0    60   ~ 0
Near\nU15
Connection ~ 4700 6550
Connection ~ 4700 6850
Wire Wire Line
	4450 6550 5400 6550
Wire Wire Line
	4450 6850 5400 6850
Text Label 6150 1550 0    60   ~ 0
~SRCLR
$Comp
L 74HC164 U18
U 1 1 59DC0329
P 7350 2600
F 0 "U18" H 7350 3050 50  0000 C CNN
F 1 "74HC164" H 7250 2700 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7200 2750 50  0001 C CNN
F 3 "" H 7200 2750 50  0001 C CNN
	1    7350 2600
	-1   0    0    -1  
$EndComp
$Comp
L 74HC164 U19
U 1 1 59DC048A
P 7350 3850
F 0 "U19" H 7350 4300 50  0000 C CNN
F 1 "74HC164" H 7250 3950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0001 C CNN
	1    7350 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 4100 7900 4100
Wire Wire Line
	6800 2850 6800 3150
Wire Wire Line
	6800 3150 7900 3150
Wire Wire Line
	7900 3150 7900 3550
Connection ~ 7900 3400
Wire Wire Line
	7900 2700 8300 2700
Wire Wire Line
	8300 1550 8300 3950
Wire Wire Line
	8300 3950 7900 3950
Wire Wire Line
	8300 1550 4150 1550
Connection ~ 4100 2300
Connection ~ 8300 2700
Wire Wire Line
	6650 3600 6800 3600
Connection ~ 4150 2400
Wire Wire Line
	6800 2250 6700 2250
Wire Wire Line
	6700 2250 6700 1700
Wire Wire Line
	6700 1700 4200 1700
Wire Wire Line
	6650 3600 6650 1850
Wire Wire Line
	6650 1850 4250 1850
Connection ~ 4200 2500
Text Label 6150 1700 0    60   ~ 0
SRPRTY
Text Label 6150 1850 0    60   ~ 0
SRSTRT
NoConn ~ 6800 4100
NoConn ~ 6800 4000
NoConn ~ 6800 3900
NoConn ~ 6800 3800
NoConn ~ 6800 3700
NoConn ~ 6800 2150
Wire Wire Line
	6450 3500 6800 3500
Wire Wire Line
	6450 3400 6800 3400
Wire Wire Line
	6450 2850 6800 2850
Connection ~ 6800 2850
Wire Wire Line
	6800 2750 6450 2750
Wire Wire Line
	6800 2650 6450 2650
Wire Wire Line
	6800 2550 6450 2550
Wire Wire Line
	6800 2450 6450 2450
Wire Wire Line
	6800 2350 6450 2350
Wire Wire Line
	4900 3250 4000 3250
Text Label 6450 2350 0    60   ~ 0
SR7
Text Label 6450 2450 0    60   ~ 0
SR6
Text Label 6450 2550 0    60   ~ 0
SR5
Text Label 6450 2650 0    60   ~ 0
SR4
Text Label 6450 2750 0    60   ~ 0
SR3
Text Label 6450 2850 0    60   ~ 0
SR2
Text Label 6450 3400 0    60   ~ 0
SR1
Text Label 6450 3500 0    60   ~ 0
SR0
Text Label 4100 3250 0    60   ~ 0
SR0
Text Label 4100 3350 0    60   ~ 0
SR1
Text Label 4100 3450 0    60   ~ 0
SR2
Text Label 4100 3550 0    60   ~ 0
SR3
Text Label 4100 3650 0    60   ~ 0
SR4
Text Label 4100 3750 0    60   ~ 0
SR5
Text Label 4100 3850 0    60   ~ 0
SR6
Text Label 4100 3950 0    60   ~ 0
SR7
$Comp
L C C28
U 1 1 59DC1842
P 5050 6700
F 0 "C28" H 5075 6800 50  0000 L CNN
F 1 "0.1uF" H 5075 6600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5088 6550 50  0001 C CNN
F 3 "" H 5050 6700 50  0001 C CNN
	1    5050 6700
	1    0    0    -1  
$EndComp
Text Notes 5000 6500 0    60   ~ 0
Near\nU18
$Comp
L C C29
U 1 1 59DC18A4
P 5400 6700
F 0 "C29" H 5425 6800 50  0000 L CNN
F 1 "0.1uF" H 5425 6600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5438 6550 50  0001 C CNN
F 3 "" H 5400 6700 50  0001 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
Text Notes 5350 6500 0    60   ~ 0
Near\nU19
Connection ~ 5050 6550
Connection ~ 5050 6850
$Comp
L 74HC14 U2
U 5 1 59DD62A4
P 9100 2150
F 0 "U2" H 9250 2250 50  0000 C CNN
F 1 "74AHC14" H 9300 2050 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 9100 2150 50  0001 C CNN
F 3 "" H 9100 2150 50  0001 C CNN
	5    9100 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8400 1400 4100 1400
$Comp
L 74HC14 U2
U 6 1 59E8C9A6
P 9100 2850
F 0 "U2" H 9250 2950 50  0000 C CNN
F 1 "74AHC14" H 9300 2750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 9100 2850 50  0001 C CNN
F 3 "" H 9100 2850 50  0001 C CNN
	6    9100 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 1100 8500 1100
Wire Wire Line
	8600 1250 4050 1250
Connection ~ 4250 2600
Text Label 6150 1250 0    60   ~ 0
KCLK
Wire Wire Line
	4050 1250 4050 2200
Wire Wire Line
	4100 1400 4100 2300
Wire Wire Line
	4150 1550 4150 2400
Wire Wire Line
	4200 1700 4200 2500
Wire Wire Line
	4250 1850 4250 2600
Wire Wire Line
	8400 1400 8400 2150
Connection ~ 8400 2150
Wire Wire Line
	8500 1100 8500 4100
Connection ~ 8500 2850
Wire Wire Line
	7900 2300 7900 2150
Connection ~ 7900 2150
$Comp
L Conn_02x08_Odd_Even J1
U 1 1 5AC4F378
P 4550 2400
F 0 "J1" H 4600 2800 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4600 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 4550 2400 50  0001 C CNN
F 3 "" H 4550 2400 50  0001 C CNN
	1    4550 2400
	1    0    0    -1  
$EndComp
$Comp
L KMDGX-6S-BS J2
U 1 1 5AC532E0
P 9800 1200
F 0 "J2" H 9800 1450 50  0000 C CNN
F 1 "KMDGX-6S-BS" H 9800 850 50  0000 C CNN
F 2 "z80_footprints:KMDGX-6S-BS" H 9800 1200 50  0001 C CNN
F 3 "" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR065
U 1 1 5AC53539
P 9950 1650
F 0 "#PWR065" H 9950 1400 50  0001 C CNN
F 1 "GND" H 9950 1500 50  0000 C CNN
F 2 "" H 9950 1650 50  0001 C CNN
F 3 "" H 9950 1650 50  0001 C CNN
	1    9950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1200 9400 1200
NoConn ~ 9500 1100
NoConn ~ 9500 1300
Wire Wire Line
	10200 1200 10100 1200
Wire Wire Line
	9950 1500 9950 1650
Wire Wire Line
	10100 2150 10100 1300
Wire Wire Line
	9550 2150 10100 2150
Connection ~ 9650 2150
Wire Wire Line
	7900 2850 8650 2850
Wire Wire Line
	7900 2150 8650 2150
Wire Wire Line
	10100 1100 10350 1100
Wire Wire Line
	10350 850  10350 2850
Wire Wire Line
	10350 2850 9550 2850
Connection ~ 9650 2850
Wire Wire Line
	8600 850  10350 850 
Connection ~ 10350 1100
Wire Wire Line
	8600 850  8600 1250
$EndSCHEMATC
