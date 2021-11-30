EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1800 2150 1800 2050
Connection ~ 1800 2150
Wire Wire Line
	1400 2150 1800 2150
Wire Wire Line
	1400 1850 1400 2150
Wire Wire Line
	1400 1650 1200 1650
Wire Wire Line
	1400 1550 1200 1550
Wire Wire Line
	1800 2200 1800 2150
$Comp
L power:GND #PWR?
U 1 1 61946EB3
P 1800 2200
F 0 "#PWR?" H 1800 1950 50  0001 C CNN
F 1 "GND" H 1805 2027 50  0000 C CNN
F 2 "" H 1800 2200 50  0001 C CNN
F 3 "" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61946EB9
P 1800 1100
F 0 "#PWR?" H 1800 950 50  0001 C CNN
F 1 "+3.3V" H 1815 1273 50  0000 C CNN
F 2 "" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
Text Label 2500 1750 2    50   ~ 0
CAN_LOW
Text Label 2500 1650 2    50   ~ 0
CAN_HIGH
Wire Wire Line
	2200 1750 2500 1750
Wire Wire Line
	1800 1100 1800 1350
$Comp
L Interface_CAN_LIN:SN65HVD230 U?
U 1 1 61946EC3
P 1800 1650
F 0 "U?" H 1800 2131 50  0000 C CNN
F 1 "SN65HVD230" H 1800 2040 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 1700 2050 50  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
NoConn ~ 1400 1750
$Comp
L Connector:TestPoint TP?
U 1 1 61946ECA
P 2500 1650
F 0 "TP?" V 2454 1838 50  0000 L CNN
F 1 "TestPoint" V 2545 1838 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 2700 1650 50  0001 C CNN
F 3 "~" H 2700 1650 50  0001 C CNN
	1    2500 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 61946ED0
P 2500 1750
F 0 "TP?" V 2454 1938 50  0000 L CNN
F 1 "TestPoint" V 2545 1938 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 2700 1750 50  0001 C CNN
F 3 "~" H 2700 1750 50  0001 C CNN
	1    2500 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 1650 2500 1650
Text HLabel 1200 1550 0    50   Input ~ 0
CAN_TX
Text HLabel 1200 1650 0    50   Output ~ 0
CAN_RX
$EndSCHEMATC
