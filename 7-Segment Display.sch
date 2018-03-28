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
Sheet 3 7
Title "7-Segment Display"
Date "2018-03-28"
Rev "6"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR032
U 1 1 59D6D694
P 4650 3700
F 0 "#PWR032" H 4650 3450 50  0001 C CNN
F 1 "GND" H 4650 3550 50  0000 C CNN
F 2 "" H 4650 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	4500 3500 4600 3400
Entry Wire Line
	4500 3400 4600 3300
Entry Wire Line
	4500 3300 4600 3200
Entry Wire Line
	4500 3200 4600 3100
Entry Wire Line
	4500 3100 4600 3000
Entry Wire Line
	4500 3000 4600 2900
Entry Wire Line
	4500 2900 4600 2800
Entry Wire Line
	4500 2800 4600 2700
Text Label 4600 2700 0    60   ~ 0
D0
Text Label 4600 2800 0    60   ~ 0
D1
Text Label 4600 2900 0    60   ~ 0
D2
Text Label 4600 3000 0    60   ~ 0
D3
Text Label 4600 3100 0    60   ~ 0
D4
Text Label 4600 3200 0    60   ~ 0
D5
Text Label 4600 3300 0    60   ~ 0
D6
Text Label 4600 3400 0    60   ~ 0
D7
$Comp
L 74LS574 U7
U 1 1 59D6D6AA
P 5450 3200
F 0 "U7" H 5450 3200 50  0000 C CNN
F 1 "74AC574" H 5500 2850 50  0000 C CNN
F 2 "" H 5450 3200 50  0001 C CNN
F 3 "" H 5450 3200 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59D6D6B1
P 6300 2700
F 0 "R12" V 6261 2810 50  0000 L CNN
F 1 "220R" V 6300 2700 50  0000 C CNN
F 2 "" V 6230 2700 50  0001 C CNN
F 3 "" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 59D6D6B8
P 6300 2800
F 0 "R13" V 6261 2910 50  0000 L CNN
F 1 "220R" V 6300 2800 50  0000 C CNN
F 2 "" V 6230 2800 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
	1    6300 2800
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 59D6D6BF
P 6300 2900
F 0 "R14" V 6261 3010 50  0000 L CNN
F 1 "220R" V 6300 2900 50  0000 C CNN
F 2 "" V 6230 2900 50  0001 C CNN
F 3 "" H 6300 2900 50  0001 C CNN
	1    6300 2900
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 59D6D6C6
P 6300 3000
F 0 "R15" V 6261 3110 50  0000 L CNN
F 1 "220R" V 6300 3000 50  0000 C CNN
F 2 "" V 6230 3000 50  0001 C CNN
F 3 "" H 6300 3000 50  0001 C CNN
	1    6300 3000
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 59D6D6CD
P 6300 3100
F 0 "R16" V 6261 3210 50  0000 L CNN
F 1 "220R" V 6300 3100 50  0000 C CNN
F 2 "" V 6230 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0001 C CNN
	1    6300 3100
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 59D6D6D4
P 6300 3200
F 0 "R17" V 6261 3310 50  0000 L CNN
F 1 "220R" V 6300 3200 50  0000 C CNN
F 2 "" V 6230 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 59D6D6DB
P 6300 3300
F 0 "R19" V 6261 3410 50  0000 L CNN
F 1 "220R" V 6300 3300 50  0000 C CNN
F 2 "" V 6230 3300 50  0001 C CNN
F 3 "" H 6300 3300 50  0001 C CNN
	1    6300 3300
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 59D6D6E2
P 6300 3400
F 0 "R20" V 6261 3510 50  0000 L CNN
F 1 "220R" V 6300 3400 50  0000 C CNN
F 2 "" V 6230 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR033
U 1 1 59D6D6E9
P 4650 5000
F 0 "#PWR033" H 4650 4750 50  0001 C CNN
F 1 "GND" H 4650 4850 50  0000 C CNN
F 2 "" H 4650 5000 50  0001 C CNN
F 3 "" H 4650 5000 50  0001 C CNN
	1    4650 5000
	1    0    0    -1  
$EndComp
Entry Wire Line
	4500 4800 4600 4700
Entry Wire Line
	4500 4700 4600 4600
Entry Wire Line
	4500 4600 4600 4500
Entry Wire Line
	4500 4500 4600 4400
Entry Wire Line
	4500 4400 4600 4300
Entry Wire Line
	4500 4300 4600 4200
Entry Wire Line
	4500 4200 4600 4100
Entry Wire Line
	4500 4100 4600 4000
Text Label 4600 4000 0    60   ~ 0
D0
Text Label 4600 4100 0    60   ~ 0
D1
Text Label 4600 4200 0    60   ~ 0
D2
Text Label 4600 4300 0    60   ~ 0
D3
Text Label 4600 4400 0    60   ~ 0
D4
Text Label 4600 4500 0    60   ~ 0
D5
Text Label 4600 4600 0    60   ~ 0
D6
Text Label 4600 4700 0    60   ~ 0
D7
$Comp
L 74LS574 U8
U 1 1 59D6D6FF
P 5450 4500
F 0 "U8" H 5450 4500 50  0000 C CNN
F 1 "74AC574" H 5500 4150 50  0000 C CNN
F 2 "" H 5450 4500 50  0001 C CNN
F 3 "" H 5450 4500 50  0001 C CNN
	1    5450 4500
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 59D6D706
P 6300 4000
F 0 "R21" V 6261 4110 50  0000 L CNN
F 1 "220R" V 6300 4000 50  0000 C CNN
F 2 "" V 6230 4000 50  0001 C CNN
F 3 "" H 6300 4000 50  0001 C CNN
	1    6300 4000
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 59D6D70D
P 6300 4100
F 0 "R22" V 6261 4210 50  0000 L CNN
F 1 "220R" V 6300 4100 50  0000 C CNN
F 2 "" V 6230 4100 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 59D6D714
P 6300 4200
F 0 "R23" V 6261 4310 50  0000 L CNN
F 1 "220R" V 6300 4200 50  0000 C CNN
F 2 "" V 6230 4200 50  0001 C CNN
F 3 "" H 6300 4200 50  0001 C CNN
	1    6300 4200
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 59D6D71B
P 6300 4300
F 0 "R24" V 6261 4410 50  0000 L CNN
F 1 "220R" V 6300 4300 50  0000 C CNN
F 2 "" V 6230 4300 50  0001 C CNN
F 3 "" H 6300 4300 50  0001 C CNN
	1    6300 4300
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 59D6D722
P 6300 4400
F 0 "R25" V 6261 4510 50  0000 L CNN
F 1 "220R" V 6300 4400 50  0000 C CNN
F 2 "" V 6230 4400 50  0001 C CNN
F 3 "" H 6300 4400 50  0001 C CNN
	1    6300 4400
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 59D6D729
P 6300 4500
F 0 "R26" V 6261 4610 50  0000 L CNN
F 1 "220R" V 6300 4500 50  0000 C CNN
F 2 "" V 6230 4500 50  0001 C CNN
F 3 "" H 6300 4500 50  0001 C CNN
	1    6300 4500
	0    1    1    0   
$EndComp
$Comp
L R R27
U 1 1 59D6D730
P 6300 4600
F 0 "R27" V 6261 4710 50  0000 L CNN
F 1 "220R" V 6300 4600 50  0000 C CNN
F 2 "" V 6230 4600 50  0001 C CNN
F 3 "" H 6300 4600 50  0001 C CNN
	1    6300 4600
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 59D6D737
P 6300 4700
F 0 "R28" V 6261 4810 50  0000 L CNN
F 1 "220R" V 6300 4700 50  0000 C CNN
F 2 "" V 6230 4700 50  0001 C CNN
F 3 "" H 6300 4700 50  0001 C CNN
	1    6300 4700
	0    1    1    0   
$EndComp
$Comp
L LTD-6940HR AFF1
U 1 1 59D6D73E
P 7350 3000
F 0 "AFF1" H 7350 3550 50  0000 C CNN
F 1 "LTD-6940HR" H 7350 2450 50  0000 C CNN
F 2 "" H 7100 3000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/LTD-6000_Series.pdf" H 7100 2291 50  0001 C CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3700 4650 3700
Wire Wire Line
	4600 2700 4750 2700
Wire Wire Line
	4600 2800 4750 2800
Wire Wire Line
	4600 2900 4750 2900
Wire Wire Line
	4600 3000 4750 3000
Wire Wire Line
	4600 3100 4750 3100
Wire Wire Line
	4600 3200 4750 3200
Wire Wire Line
	4600 3300 4750 3300
Wire Wire Line
	4600 3400 4750 3400
Wire Bus Line
	4500 2250 4500 4800
Wire Wire Line
	4750 5000 4650 5000
Wire Wire Line
	4600 4000 4750 4000
Wire Wire Line
	4600 4100 4750 4100
Wire Wire Line
	4600 4200 4750 4200
Wire Wire Line
	4600 4300 4750 4300
Wire Wire Line
	4600 4400 4750 4400
Wire Wire Line
	4600 4500 4750 4500
Wire Wire Line
	4600 4600 4750 4600
Wire Wire Line
	4600 4700 4750 4700
Wire Wire Line
	8200 2700 8250 2700
Wire Wire Line
	8250 2700 8250 4000
Wire Wire Line
	8250 4000 6450 4000
Wire Wire Line
	8200 2800 8300 2800
Wire Wire Line
	8300 2800 8300 4100
Wire Wire Line
	8300 4100 6450 4100
Wire Wire Line
	8200 2900 8350 2900
Wire Wire Line
	8350 2900 8350 4200
Wire Wire Line
	8350 4200 6450 4200
Wire Wire Line
	8200 3000 8400 3000
Wire Wire Line
	8400 3000 8400 4300
Wire Wire Line
	8400 4300 6450 4300
Wire Wire Line
	8200 3100 8450 3100
Wire Wire Line
	8450 3100 8450 4400
Wire Wire Line
	8450 4400 6450 4400
Wire Wire Line
	8200 3200 8500 3200
Wire Wire Line
	8500 3200 8500 4500
Wire Wire Line
	8500 4500 6450 4500
Wire Wire Line
	8200 3300 8550 3300
Wire Wire Line
	8550 3300 8550 4600
Wire Wire Line
	8550 4600 6450 4600
Wire Wire Line
	8200 3400 8600 3400
Wire Wire Line
	8600 3400 8600 4700
Wire Wire Line
	8600 4700 6450 4700
$Comp
L GND #PWR034
U 1 1 59D6D771
P 8400 2600
F 0 "#PWR034" H 8400 2350 50  0001 C CNN
F 1 "GND" H 8400 2450 50  0000 C CNN
F 2 "" H 8400 2600 50  0001 C CNN
F 3 "" H 8400 2600 50  0001 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2600 8200 2600
Wire Wire Line
	6450 2600 6450 2400
Wire Wire Line
	6450 2400 8400 2400
Wire Wire Line
	8400 2400 8400 2600
Wire Wire Line
	4400 3600 4750 3600
Wire Wire Line
	4400 4900 4750 4900
Wire Wire Line
	1450 3500 3200 3500
Wire Wire Line
	2050 4800 3200 4800
Wire Wire Line
	1450 3700 3200 3700
Wire Wire Line
	1450 5000 3200 5000
Text HLabel 1450 2250 0    60   BiDi ~ 0
D[0..7]
Wire Bus Line
	1450 2250 4500 2250
Text HLabel 1450 3500 0    60   Input ~ 0
~WR
Wire Wire Line
	2050 4800 2050 3500
Connection ~ 2050 3500
Text HLabel 1450 3700 0    60   Input ~ 0
~IORQ0
Text HLabel 1450 5000 0    60   Input ~ 0
~IORQ1
$Comp
L C C10
U 1 1 59D81B68
P 5450 1400
F 0 "C10" H 5475 1500 50  0000 L CNN
F 1 "0.1uF" H 5475 1300 50  0000 L CNN
F 2 "" H 5488 1250 50  0001 C CNN
F 3 "" H 5450 1400 50  0001 C CNN
	1    5450 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 59D81B6F
P 5200 1550
F 0 "#PWR035" H 5200 1300 50  0001 C CNN
F 1 "GND" H 5200 1400 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 59D81B75
P 5750 1400
F 0 "C11" H 5775 1500 50  0000 L CNN
F 1 "0.1uF" H 5775 1300 50  0000 L CNN
F 2 "" H 5788 1250 50  0001 C CNN
F 3 "" H 5750 1400 50  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR036
U 1 1 59D81B7C
P 5200 1250
F 0 "#PWR036" H 5200 1100 50  0001 C CNN
F 1 "VCC" H 5200 1400 50  0000 C CNN
F 2 "" H 5200 1250 50  0001 C CNN
F 3 "" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
Text Notes 5400 1200 0    60   ~ 0
Near\nU7
Text Notes 5700 1200 0    60   ~ 0
Near\nU8
Connection ~ 5450 1250
Connection ~ 5450 1550
Connection ~ 5750 1250
Connection ~ 5750 1550
Wire Wire Line
	5200 1550 6050 1550
Wire Wire Line
	5200 1250 6050 1250
$Comp
L 74HC02 U9
U 1 1 59EFCF09
P 3800 3600
F 0 "U9" H 3800 3650 50  0000 C CNN
F 1 "74AHC02" H 3850 3550 50  0000 C CNN
F 2 "" H 3800 3600 50  0001 C CNN
F 3 "" H 3800 3600 50  0001 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L 74HC02 U9
U 2 1 59EFD198
P 3800 4900
F 0 "U9" H 3800 4950 50  0000 C CNN
F 1 "74AHC02" H 3850 4850 50  0000 C CNN
F 2 "" H 3800 4900 50  0001 C CNN
F 3 "" H 3800 4900 50  0001 C CNN
	2    3800 4900
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 59EFD5EA
P 6050 1400
F 0 "C20" H 6075 1500 50  0000 L CNN
F 1 "0.1uF" H 6075 1300 50  0000 L CNN
F 2 "" H 6088 1250 50  0001 C CNN
F 3 "" H 6050 1400 50  0001 C CNN
	1    6050 1400
	1    0    0    -1  
$EndComp
Text Notes 6000 1200 0    60   ~ 0
Near\nU9
$EndSCHEMATC
