EESchema Schematic File Version 4
LIBS:z80-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 9 10
Title "SD Card Interface"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:SD_Card J7
U 1 1 5CC6C3AB
P 8600 1450
F 0 "J7" H 8600 2115 50  0000 C CNN
F 1 "SD_Card" H 8600 2024 50  0000 C CNN
F 2 "" H 8600 1450 50  0001 C CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10067847.pdf" H 8600 1450 50  0001 C CNN
	1    8600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5CC6C42D
P 7500 2050
F 0 "#PWR0111" H 7500 1800 50  0001 C CNN
F 1 "GND" H 7505 1877 50  0000 C CNN
F 2 "" H 7500 2050 50  0001 C CNN
F 3 "" H 7500 2050 50  0001 C CNN
	1    7500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2050 7500 1650
Wire Wire Line
	7500 1650 7700 1650
Wire Wire Line
	7700 1350 7500 1350
Wire Wire Line
	7500 1350 7500 1650
Connection ~ 7500 1650
Wire Wire Line
	9500 1550 9500 1650
Wire Wire Line
	9500 1650 9500 2050
Connection ~ 9500 1650
$Comp
L power:GND #PWR0114
U 1 1 5CC6C4A2
P 9500 2050
F 0 "#PWR0114" H 9500 1800 50  0001 C CNN
F 1 "GND" H 9505 1877 50  0000 C CNN
F 2 "" H 9500 2050 50  0001 C CNN
F 3 "" H 9500 2050 50  0001 C CNN
	1    9500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1450 7600 1450
Wire Wire Line
	7600 1450 7600 800 
$Comp
L power:+3V3 #PWR0112
U 1 1 5CC6C506
P 7600 800
F 0 "#PWR0112" H 7600 650 50  0001 C CNN
F 1 "+3V3" H 7615 973 50  0000 C CNN
F 2 "" H 7600 800 50  0001 C CNN
F 3 "" H 7600 800 50  0001 C CNN
	1    7600 800 
	1    0    0    -1  
$EndComp
NoConn ~ 7700 1050
NoConn ~ 7700 1850
$Comp
L Device:R R33
U 1 1 5C393185
P 7750 2900
F 0 "R33" V 7650 2900 50  0000 C CNN
F 1 "50K" V 7750 2900 50  0000 C CNN
F 2 "" V 7680 2900 50  0001 C CNN
F 3 "~" H 7750 2900 50  0001 C CNN
	1    7750 2900
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5C39347C
P 7900 2800
F 0 "#PWR0113" H 7900 2650 50  0001 C CNN
F 1 "+3V3" H 7915 2973 50  0000 C CNN
F 2 "" H 7900 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7900 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 2900 7900 2800
Wire Wire Line
	7700 1750 7600 1750
Wire Wire Line
	7600 1750 7600 2900
$Comp
L Device:C C36
U 1 1 5C3C021B
P 950 7600
F 0 "C36" H 975 7700 50  0000 L CNN
F 1 "0.1uF" H 975 7500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 988 7450 50  0001 C CNN
F 3 "" H 950 7600 50  0001 C CNN
	1    950  7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0100
U 1 1 5C3C0222
P 700 7750
F 0 "#PWR0100" H 700 7500 50  0001 C CNN
F 1 "GND" H 700 7600 50  0000 C CNN
F 2 "" H 700 7750 50  0001 C CNN
F 3 "" H 700 7750 50  0001 C CNN
	1    700  7750
	1    0    0    -1  
$EndComp
Text Notes 900  7400 0    60   ~ 0
Near\nU27
Wire Wire Line
	700  7750 950  7750
Wire Wire Line
	700  7450 950  7450
$Comp
L power:+3V3 #PWR099
U 1 1 5C3C0A51
P 700 7450
F 0 "#PWR099" H 700 7300 50  0001 C CNN
F 1 "+3V3" H 715 7623 50  0000 C CNN
F 2 "" H 700 7450 50  0001 C CNN
F 3 "" H 700 7450 50  0001 C CNN
	1    700  7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS165 U27
U 1 1 5C823673
P 6000 1850
F 0 "U27" H 5750 2600 50  0000 C CNN
F 1 "74LV165" H 6200 1000 50  0000 C CNN
F 2 "" H 6000 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 6000 1850 50  0001 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5C82427A
P 6000 950
F 0 "#PWR0117" H 6000 800 50  0001 C CNN
F 1 "+3V3" H 6015 1123 50  0000 C CNN
F 2 "" H 6000 950 50  0001 C CNN
F 3 "" H 6000 950 50  0001 C CNN
	1    6000 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C824359
P 6000 2850
F 0 "#PWR0118" H 6000 2600 50  0001 C CNN
F 1 "GND" H 6005 2677 50  0000 C CNN
F 2 "" H 6000 2850 50  0001 C CNN
F 3 "" H 6000 2850 50  0001 C CNN
	1    6000 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6500 1350
Wire Wire Line
	5500 1250 5500 850 
Wire Wire Line
	5500 850  5600 850 
$Comp
L power:GND #PWR0110
U 1 1 5C825757
P 5600 850
F 0 "#PWR0110" H 5600 600 50  0001 C CNN
F 1 "GND" H 5605 677 50  0000 C CNN
F 2 "" H 5600 850 50  0001 C CNN
F 3 "" H 5600 850 50  0001 C CNN
	1    5600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1250 7700 1250
Text HLabel 1600 700  0    60   BiDi ~ 0
D[0..7]
Text HLabel 1600 1150 0    60   Input ~ 0
~RD
Text HLabel 1600 950  0    60   Input ~ 0
~WR
Text HLabel 1600 1050 0    60   Input ~ 0
~CS
Wire Wire Line
	5500 1350 5350 1350
Wire Wire Line
	5500 1450 5350 1450
Wire Wire Line
	5500 1550 5350 1550
Wire Wire Line
	5500 1650 5350 1650
Wire Wire Line
	5500 1750 5350 1750
Wire Wire Line
	5500 1850 5350 1850
Wire Wire Line
	5500 1950 5350 1950
Wire Wire Line
	5500 2050 5350 2050
Text Label 5350 1350 0    60   ~ 0
D0
Text Label 5350 1450 0    60   ~ 0
D1
Text Label 5350 1550 0    60   ~ 0
D2
Text Label 5350 1650 0    60   ~ 0
D3
Text Label 5350 1750 0    60   ~ 0
D4
Text Label 5350 1850 0    60   ~ 0
D5
Text Label 5350 1950 0    60   ~ 0
D6
Text Label 5350 2050 0    60   ~ 0
D7
Entry Wire Line
	5250 1950 5350 2050
Entry Wire Line
	5250 1850 5350 1950
Entry Wire Line
	5250 1750 5350 1850
Entry Wire Line
	5250 1650 5350 1750
Entry Wire Line
	5250 1550 5350 1650
Entry Wire Line
	5250 1450 5350 1550
Entry Wire Line
	5250 1350 5350 1450
Entry Wire Line
	5250 1250 5350 1350
Wire Bus Line
	5250 700  1600 700 
$Comp
L 74xx:74LS32 U?
U 3 1 5C7EFD70
P 4600 2250
AR Path="/59EFC926/5C7EFD70" Ref="U?"  Part="3" 
AR Path="/5CC65FE6/5C7EFD70" Ref="U4"  Part="3" 
F 0 "U4" H 4600 2300 50  0000 C CNN
F 1 "74AHC32" H 4600 2200 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 4600 2250 50  0001 C CNN
F 3 "" H 4600 2250 50  0001 C CNN
	3    4600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 5500 2250
Wire Wire Line
	1600 1050 3800 1050
Wire Wire Line
	1600 950  4300 950 
Wire Wire Line
	5500 2550 5500 2850
Wire Wire Line
	5500 2850 6000 2850
Connection ~ 6000 2850
Text HLabel 1500 5500 0    60   Input ~ 0
SDCLK
Wire Wire Line
	4300 950  4300 2150
Wire Wire Line
	7700 1550 7000 1550
Wire Wire Line
	7600 2900 7600 3100
Connection ~ 7600 2900
Text HLabel 1500 5650 0    60   Input ~ 0
~SDCS
Wire Wire Line
	7700 1150 7100 1150
Wire Wire Line
	7100 5650 6600 5650
Wire Wire Line
	6400 3650 6550 3650
Wire Wire Line
	6400 3750 6550 3750
Wire Wire Line
	6400 3850 6550 3850
Wire Wire Line
	6400 3950 6550 3950
Wire Wire Line
	6400 4050 6550 4050
Wire Wire Line
	6400 4150 6550 4150
Wire Wire Line
	6400 4250 6550 4250
Wire Wire Line
	6400 4350 6550 4350
Text Label 6550 3650 2    60   ~ 0
D0
Text Label 6550 3750 2    60   ~ 0
D1
Text Label 6550 3850 2    60   ~ 0
D2
Text Label 6550 3950 2    60   ~ 0
D3
Text Label 6550 4050 2    60   ~ 0
D4
Text Label 6550 4150 2    60   ~ 0
D5
Text Label 6550 4250 2    60   ~ 0
D6
Text Label 6550 4350 2    60   ~ 0
D7
Entry Wire Line
	6650 4250 6550 4350
Entry Wire Line
	6650 4150 6550 4250
Entry Wire Line
	6650 4050 6550 4150
Entry Wire Line
	6650 3950 6550 4050
Entry Wire Line
	6650 3850 6550 3950
Entry Wire Line
	6650 3750 6550 3850
Entry Wire Line
	6650 3650 6550 3750
Entry Wire Line
	6650 3550 6550 3650
Wire Wire Line
	6600 5500 7000 5500
Wire Bus Line
	5250 700  6650 700 
Connection ~ 5250 700 
Wire Wire Line
	4200 2350 4300 2350
Wire Wire Line
	4200 2350 4200 1050
Text HLabel 1500 4200 0    60   Input ~ 0
~ICLR
Text HLabel 1600 2450 0    60   Input ~ 0
OCLK
Wire Wire Line
	5500 2450 1600 2450
$Comp
L 74xx:74LS541 U26
U 1 1 5CD721C7
P 5900 4150
F 0 "U26" H 5650 4800 50  0000 C CNN
F 1 "74AHC541" H 6100 3500 50  0000 C CNN
F 2 "" H 5900 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 5900 4150 50  0001 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
$Comp
L headquarters:74HC164 U25
U 1 1 5CD72BAE
P 4750 4100
F 0 "U25" H 4450 4700 50  0000 C CNN
F 1 "74HCT164" H 4750 3700 50  0000 C CNN
F 2 "" H 4600 4250 50  0001 C CNN
F 3 "" H 4600 4250 50  0001 C CNN
	1    4750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3650 5400 3650
Wire Wire Line
	5300 3750 5400 3750
Wire Wire Line
	5300 3850 5400 3850
Wire Wire Line
	5300 3950 5400 3950
Wire Wire Line
	5300 4050 5400 4050
Wire Wire Line
	5300 4150 5400 4150
Wire Wire Line
	5300 4250 5400 4250
Wire Wire Line
	5300 4350 5400 4350
$Comp
L power:VCC #PWR0115
U 1 1 5CD8A4E3
P 5900 3350
F 0 "#PWR0115" H 5900 3200 50  0001 C CNN
F 1 "VCC" H 5917 3523 50  0000 C CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5CD8A5DB
P 5900 4950
F 0 "#PWR0116" H 5900 4700 50  0001 C CNN
F 1 "GND" H 5905 4777 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5500 4200 5500
Wire Wire Line
	1500 5650 4500 5650
Wire Wire Line
	7000 1550 7000 5500
Wire Wire Line
	7100 5650 7100 1150
Wire Wire Line
	4200 3100 4200 3650
Wire Wire Line
	4200 3100 7600 3100
$Comp
L power:VCC #PWR0102
U 1 1 5CDA3755
P 4000 3800
F 0 "#PWR0102" H 4000 3650 50  0001 C CNN
F 1 "VCC" H 4017 3973 50  0000 C CNN
F 2 "" H 4000 3800 50  0001 C CNN
F 3 "" H 4000 3800 50  0001 C CNN
	1    4000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3800 4200 3800
Wire Wire Line
	1500 4200 4200 4200
Wire Wire Line
	4200 4350 4200 5500
Connection ~ 4200 5500
Wire Wire Line
	4200 5500 4500 5500
Wire Wire Line
	3800 4550 3800 1050
Connection ~ 3800 1050
Wire Wire Line
	3800 1050 4200 1050
Wire Wire Line
	3700 1150 3700 4650
Wire Wire Line
	3700 4650 5400 4650
Wire Wire Line
	1600 1150 3700 1150
Wire Wire Line
	3800 4550 5400 4550
Text Notes 9600 1300 0    60   ~ 0
Hook up to some GP-in?
Text GLabel 6600 5500 0    60   Input ~ 0
SDCLK_3V3
Text GLabel 6600 5650 0    60   Input ~ 0
~SDCS_3V3
Text GLabel 4500 5500 2    60   Output ~ 0
SDCLK_5V
Text GLabel 4500 5650 2    60   Output ~ 0
~SDCS_5V
Text Notes 5900 5650 2    60   ~ 0
See LCD page for\nlevel conversion.
$Comp
L Device:C C39
U 1 1 5CDD416C
P 1700 7600
F 0 "C39" H 1725 7700 50  0000 L CNN
F 1 "0.1uF" H 1725 7500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1738 7450 50  0001 C CNN
F 3 "" H 1700 7600 50  0001 C CNN
	1    1700 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5CDD4172
P 1450 7750
F 0 "#PWR0120" H 1450 7500 50  0001 C CNN
F 1 "GND" H 1450 7600 50  0000 C CNN
F 2 "" H 1450 7750 50  0001 C CNN
F 3 "" H 1450 7750 50  0001 C CNN
	1    1450 7750
	1    0    0    -1  
$EndComp
Text Notes 1650 7400 0    60   ~ 0
Near\nU25
Wire Wire Line
	1450 7750 1700 7750
Wire Wire Line
	1450 7450 1700 7450
$Comp
L power:VCC #PWR0119
U 1 1 5CDD64E5
P 1450 7450
F 0 "#PWR0119" H 1450 7300 50  0001 C CNN
F 1 "VCC" H 1467 7623 50  0000 C CNN
F 2 "" H 1450 7450 50  0001 C CNN
F 3 "" H 1450 7450 50  0001 C CNN
	1    1450 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5CDD6965
P 2050 7600
F 0 "C40" H 2075 7700 50  0000 L CNN
F 1 "0.1uF" H 2075 7500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2088 7450 50  0001 C CNN
F 3 "" H 2050 7600 50  0001 C CNN
	1    2050 7600
	1    0    0    -1  
$EndComp
Text Notes 2000 7400 0    60   ~ 0
Near\nU26
Wire Wire Line
	1700 7450 2050 7450
Connection ~ 1700 7450
Wire Wire Line
	2050 7750 1700 7750
Wire Bus Line
	5250 700  5250 1950
Wire Bus Line
	6650 700  6650 4250
Connection ~ 1700 7750
$EndSCHEMATC
