EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR020
U 1 1 5DA60792
P 6250 2050
F 0 "#PWR020" H 6250 1900 50  0001 C CNN
F 1 "+3.3V" H 6265 2223 50  0000 C CNN
F 2 "" H 6250 2050 50  0001 C CNN
F 3 "" H 6250 2050 50  0001 C CNN
	1    6250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2050 6250 2350
$Comp
L power:GND #PWR021
U 1 1 5DA6110D
P 6250 5350
F 0 "#PWR021" H 6250 5100 50  0001 C CNN
F 1 "GND" H 6255 5177 50  0000 C CNN
F 2 "" H 6250 5350 50  0001 C CNN
F 3 "" H 6250 5350 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5150 6250 5350
$Comp
L power:+3.3V #PWR06
U 1 1 5DA6E370
P 1200 7200
F 0 "#PWR06" H 1200 7050 50  0001 C CNN
F 1 "+3.3V" H 1215 7373 50  0000 C CNN
F 2 "" H 1200 7200 50  0001 C CNN
F 3 "" H 1200 7200 50  0001 C CNN
	1    1200 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DA6FF9D
P 1200 7400
F 0 "R7" H 1259 7446 50  0000 L CNN
F 1 "10K" H 1259 7355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 7400 50  0001 C CNN
F 3 "~" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DA70D8A
P 900 7550
F 0 "C2" V 671 7550 50  0000 C CNN
F 1 "1nF" V 762 7550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 900 7550 50  0001 C CNN
F 3 "~" H 900 7550 50  0001 C CNN
	1    900  7550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DA7199D
P 650 7550
F 0 "#PWR03" H 650 7300 50  0001 C CNN
F 1 "GND" H 655 7377 50  0000 C CNN
F 2 "" H 650 7550 50  0001 C CNN
F 3 "" H 650 7550 50  0001 C CNN
	1    650  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7550 800  7550
Text Notes 7400 7500 0    50   ~ 0
MainBoard\n
Text Notes 10600 7700 0    50   ~ 0
0.1\n\n
Text Label 7200 3850 2    50   ~ 0
MISO
Text Label 7200 3750 2    50   ~ 0
SCLK
Wire Wire Line
	5450 2550 5650 2550
Text Label 5450 2550 0    50   ~ 0
EN
Text Label 1550 7550 2    50   ~ 0
EN
Text Label 7200 2550 2    50   ~ 0
BOOT
$Comp
L power:+3.3V #PWR09
U 1 1 5DAB272A
P 1800 7200
F 0 "#PWR09" H 1800 7050 50  0001 C CNN
F 1 "+3.3V" H 1815 7373 50  0000 C CNN
F 2 "" H 1800 7200 50  0001 C CNN
F 3 "" H 1800 7200 50  0001 C CNN
	1    1800 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5DAB35D0
P 1800 7400
F 0 "R8" H 1859 7446 50  0000 L CNN
F 1 "10K" H 1859 7355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1800 7400 50  0001 C CNN
F 3 "~" H 1800 7400 50  0001 C CNN
	1    1800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7550 1800 7550
Wire Wire Line
	1800 7550 1800 7500
Text Label 2100 7550 2    50   ~ 0
BOOT
$Comp
L power:GND #PWR07
U 1 1 5DAB55F6
P 1800 6750
F 0 "#PWR07" H 1800 6500 50  0001 C CNN
F 1 "GND" H 1805 6577 50  0000 C CNN
F 2 "" H 1800 6750 50  0001 C CNN
F 3 "" H 1800 6750 50  0001 C CNN
	1    1800 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DAB5946
P 2150 6700
F 0 "C3" V 1921 6700 50  0000 C CNN
F 1 "1nF" V 2012 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2150 6700 50  0001 C CNN
F 3 "~" H 2150 6700 50  0001 C CNN
	1    2150 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5DAB6448
P 2600 6500
F 0 "R9" V 2404 6500 50  0000 C CNN
F 1 "470" V 2495 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2600 6500 50  0001 C CNN
F 3 "~" H 2600 6500 50  0001 C CNN
	1    2600 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 6500 1800 6700
Wire Wire Line
	2050 6700 1800 6700
Connection ~ 1800 6700
Wire Wire Line
	1800 6700 1800 6750
Wire Wire Line
	2250 6700 2500 6700
Wire Wire Line
	2500 6700 2500 6500
Connection ~ 2500 6500
Wire Wire Line
	2900 6500 2700 6500
Text Label 2900 6500 2    50   ~ 0
BOOT
$Comp
L power:GND #PWR02
U 1 1 5DABBFE1
P 650 6750
F 0 "#PWR02" H 650 6500 50  0001 C CNN
F 1 "GND" H 655 6577 50  0000 C CNN
F 2 "" H 650 6750 50  0001 C CNN
F 3 "" H 650 6750 50  0001 C CNN
	1    650  6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DABBFE7
P 1000 6700
F 0 "C1" V 771 6700 50  0000 C CNN
F 1 "1nF" V 862 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 6700 50  0001 C CNN
F 3 "~" H 1000 6700 50  0001 C CNN
	1    1000 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DABBFED
P 1450 6500
F 0 "R5" V 1254 6500 50  0000 C CNN
F 1 "470" V 1345 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1450 6500 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	650  6500 650  6700
Wire Wire Line
	900  6700 650  6700
Connection ~ 650  6700
Wire Wire Line
	650  6700 650  6750
Wire Wire Line
	1100 6700 1350 6700
Wire Wire Line
	1350 6700 1350 6500
Connection ~ 1350 6500
Wire Wire Line
	1750 6500 1550 6500
Text Label 1750 6500 2    50   ~ 0
EN
Text Label 7200 3250 2    50   ~ 0
BARO_CS
Wire Wire Line
	6850 3250 7200 3250
$Comp
L Device:LED_Small D3
U 1 1 5DB110D6
P 2600 1300
F 0 "D3" H 2600 1095 50  0000 C CNN
F 1 "TX_LED" H 2600 1186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2600 1300 50  0001 C CNN
F 3 "~" V 2600 1300 50  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5DB13286
P 2600 950
F 0 "D2" H 2600 745 50  0000 C CNN
F 1 "RX_LED" H 2600 836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2600 950 50  0001 C CNN
F 3 "~" V 2600 950 50  0001 C CNN
	1    2600 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5DB4A6E6
P 2900 950
F 0 "R10" V 2704 950 50  0000 C CNN
F 1 "470" V 2795 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 950 50  0001 C CNN
F 3 "~" H 2900 950 50  0001 C CNN
	1    2900 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DB4B3E7
P 2900 1300
F 0 "R11" V 2704 1300 50  0000 C CNN
F 1 "470" V 2795 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 1300 50  0001 C CNN
F 3 "~" H 2900 1300 50  0001 C CNN
	1    2900 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1300 2800 1300
Wire Wire Line
	2700 950  2800 950 
Wire Wire Line
	2300 950  2500 950 
Wire Wire Line
	2300 1300 2500 1300
$Comp
L power:GND #PWR012
U 1 1 5DB5396A
P 3900 1700
F 0 "#PWR012" H 3900 1450 50  0001 C CNN
F 1 "GND" H 3905 1527 50  0000 C CNN
F 2 "" H 3900 1700 50  0001 C CNN
F 3 "" H 3900 1700 50  0001 C CNN
	1    3900 1700
	1    0    0    -1  
$EndComp
Text Label 2300 950  0    50   ~ 0
RXD
Text Label 2300 1300 0    50   ~ 0
TXD
Wire Wire Line
	6850 2550 7200 2550
Wire Wire Line
	6850 2650 7200 2650
Wire Wire Line
	6850 2850 7200 2850
Wire Wire Line
	6850 4250 7200 4250
Wire Wire Line
	6850 3750 7200 3750
Wire Wire Line
	6850 3850 7200 3850
Wire Wire Line
	6850 4150 7200 4150
NoConn ~ 4000 3800
NoConn ~ 4000 3900
NoConn ~ 4000 4000
NoConn ~ 4000 4100
NoConn ~ 2800 3200
NoConn ~ 2800 3300
Wire Wire Line
	2800 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3000
Wire Wire Line
	2700 3000 2400 3000
Wire Wire Line
	2400 3050 2400 3000
Connection ~ 2400 3000
Wire Wire Line
	2400 3000 2400 2950
$Comp
L power:GND #PWR04
U 1 1 5DAEED0E
P 2400 3250
F 0 "#PWR04" H 2400 3000 50  0001 C CNN
F 1 "GND" H 2405 3077 50  0000 C CNN
F 2 "" H 2400 3250 50  0001 C CNN
F 3 "" H 2400 3250 50  0001 C CNN
	1    2400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5DAEFF21
P 3300 2500
F 0 "#PWR08" H 3300 2350 50  0001 C CNN
F 1 "+3.3V" H 3315 2673 50  0000 C CNN
F 2 "" H 3300 2500 50  0001 C CNN
F 3 "" H 3300 2500 50  0001 C CNN
	1    3300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2500 3300 2600
Wire Wire Line
	3300 2600 3400 2600
Connection ~ 3300 2600
Wire Wire Line
	4000 3200 4300 3200
Wire Wire Line
	4000 3300 4300 3300
Text Label 4300 3200 2    50   ~ 0
RXD
Text Label 4300 3300 2    50   ~ 0
TXD
Text Label 7200 2650 2    50   ~ 0
RXD
Text Label 7200 2850 2    50   ~ 0
TXD
$Comp
L power:GND #PWR010
U 1 1 5DB188B7
P 3500 4500
F 0 "#PWR010" H 3500 4250 50  0001 C CNN
F 1 "GND" H 3505 4327 50  0000 C CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "" H 3500 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4500 3500 4400
Wire Wire Line
	3500 4400 3400 4400
Wire Wire Line
	1000 7550 1200 7550
Wire Wire Line
	1200 7550 1200 7500
Connection ~ 1200 7550
Wire Wire Line
	1200 7550 1550 7550
Wire Wire Line
	1800 7200 1800 7300
Wire Wire Line
	1200 7200 1200 7300
Wire Wire Line
	1650 5200 1650 5150
Wire Wire Line
	1650 5150 2100 5150
Wire Wire Line
	1650 6150 1650 6200
Wire Wire Line
	1650 6200 2100 6200
$Comp
L Device:R_Small R1
U 1 1 5DB9F807
P 1100 5400
F 0 "R1" V 904 5400 50  0000 C CNN
F 1 "10K" V 995 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1100 5400 50  0001 C CNN
F 3 "~" H 1100 5400 50  0001 C CNN
	1    1100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DBA0737
P 1100 5950
F 0 "R2" V 904 5950 50  0000 C CNN
F 1 "10K" V 995 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1100 5950 50  0001 C CNN
F 3 "~" H 1100 5950 50  0001 C CNN
	1    1100 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 5950 1350 5950
Wire Wire Line
	1350 5400 1200 5400
Wire Wire Line
	1000 5950 950  5950
Wire Wire Line
	1000 5400 900  5400
Wire Wire Line
	950  5950 950  5600
Wire Wire Line
	950  5600 1650 5600
Connection ~ 950  5950
Wire Wire Line
	950  5950 800  5950
Wire Wire Line
	900  5400 900  5750
Wire Wire Line
	900  5750 1650 5750
Connection ~ 900  5400
Wire Wire Line
	900  5400 800  5400
Text Label 800  5400 0    50   ~ 0
DTR
Text Label 800  5950 0    50   ~ 0
RTS
Text Label 2100 5150 2    50   ~ 0
EN
Text Label 2100 6200 2    50   ~ 0
BOOT
$Comp
L Device:R_Small R6
U 1 1 5DBC28E4
P 2750 2700
F 0 "R6" H 2809 2746 50  0000 L CNN
F 1 "1K" H 2809 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2750 2700 50  0001 C CNN
F 3 "~" H 2750 2700 50  0001 C CNN
	1    2750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2600 3300 2600
Wire Wire Line
	2750 2800 2750 2900
Wire Wire Line
	2750 2900 2800 2900
Wire Wire Line
	4000 3100 4300 3100
Wire Wire Line
	4000 3500 4300 3500
Text Label 4300 3100 2    50   ~ 0
RTS
Text Label 4300 3500 2    50   ~ 0
DTR
$Comp
L Power_Protection:SP0503BAHT D1
U 1 1 5DBEFF1C
P 1900 4550
F 0 "D1" H 2105 4596 50  0000 L CNN
F 1 "SP0503BAHT" H 2105 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2125 4500 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 2025 4675 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DC01586
P 1900 4750
F 0 "#PWR05" H 1900 4500 50  0001 C CNN
F 1 "GND" H 1905 4577 50  0000 C CNN
F 2 "" H 1900 4750 50  0001 C CNN
F 3 "" H 1900 4750 50  0001 C CNN
	1    1900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5DC16656
P 3150 950
F 0 "#PWR011" H 3150 800 50  0001 C CNN
F 1 "+3.3V" H 3165 1123 50  0000 C CNN
F 2 "" H 3150 950 50  0001 C CNN
F 3 "" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5DC1F7E5
P 3750 950
F 0 "D6" H 3750 745 50  0000 C CNN
F 1 "PWR_LED" H 3750 836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 3750 950 50  0001 C CNN
F 3 "~" V 3750 950 50  0001 C CNN
	1    3750 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5DC1F7EB
P 3450 950
F 0 "R14" V 3254 950 50  0000 C CNN
F 1 "470" V 3345 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3450 950 50  0001 C CNN
F 3 "~" H 3450 950 50  0001 C CNN
	1    3450 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 950  3650 950 
Wire Wire Line
	3150 950  3350 950 
Wire Wire Line
	3900 950  3850 950 
$Comp
L Device:R_Small R4
U 1 1 5DAEB42F
P 2400 3150
F 0 "R4" H 2459 3196 50  0000 L CNN
F 1 "43K" H 2459 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5DAEAED8
P 2400 2850
F 0 "R3" H 2459 2896 50  0000 L CNN
F 1 "22K" H 2459 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 2850 50  0001 C CNN
F 3 "~" H 2400 2850 50  0001 C CNN
	1    2400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2750 2400 2750
Text Label 7200 4250 2    50   ~ 0
SD_CS
Wire Wire Line
	6850 3650 7200 3650
Wire Wire Line
	6850 3550 7200 3550
Text Label 7200 3550 2    50   ~ 0
RADIO_RX
Text Label 7200 3650 2    50   ~ 0
RADIO_TX
$Comp
L RF_Module:ESP32-WROOM-32 U3
U 1 1 5DA5F4C7
P 6250 3750
F 0 "U3" H 6250 5331 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 6250 5240 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6250 2250 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5950 3800 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
Text Label 7600 3950 2    50   ~ 0
SDA
Text Label 7600 4050 2    50   ~ 0
SCL
Wire Wire Line
	6850 3950 7300 3950
Wire Wire Line
	6850 4050 7400 4050
Wire Wire Line
	7400 4050 7400 3850
Connection ~ 7400 4050
Wire Wire Line
	7400 4050 7600 4050
Wire Wire Line
	7300 3950 7300 3850
Connection ~ 7300 3950
$Comp
L Device:R_Small R22
U 1 1 5DB1BC5B
P 7400 3750
F 0 "R22" H 7459 3796 50  0000 L CNN
F 1 "4.7K" H 7459 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7400 3750 50  0001 C CNN
F 3 "~" H 7400 3750 50  0001 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5DB1C9E2
P 7300 3750
F 0 "R21" H 7359 3796 50  0000 L CNN
F 1 "4.7K" H 7359 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 3750 50  0001 C CNN
F 3 "~" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3650 7350 3650
$Comp
L power:+3.3V #PWR025
U 1 1 5DB29AD6
P 7350 3600
F 0 "#PWR025" H 7350 3450 50  0001 C CNN
F 1 "+3.3V" H 7365 3773 50  0000 C CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3600 7350 3650
Connection ~ 7350 3650
Wire Wire Line
	7350 3650 7400 3650
Wire Wire Line
	6850 3150 7200 3150
Wire Wire Line
	6850 4650 7200 4650
Wire Wire Line
	6850 4550 7200 4550
Text Label 7200 4650 2    50   ~ 0
CAN_RX
Text Label 7200 4550 2    50   ~ 0
CAN_TX
Wire Wire Line
	3450 7450 3450 7350
Connection ~ 3450 7450
Wire Wire Line
	3050 7450 3450 7450
Wire Wire Line
	3050 7150 3050 7450
Text Label 2850 6950 0    50   ~ 0
CAN_RX
Text Label 2850 6850 0    50   ~ 0
CAN_TX
Wire Wire Line
	3050 6950 2850 6950
Wire Wire Line
	3050 6850 2850 6850
Wire Wire Line
	3450 7500 3450 7450
$Comp
L power:GND #PWR014
U 1 1 5DBF5BA5
P 3450 7500
F 0 "#PWR014" H 3450 7250 50  0001 C CNN
F 1 "GND" H 3455 7327 50  0000 C CNN
F 2 "" H 3450 7500 50  0001 C CNN
F 3 "" H 3450 7500 50  0001 C CNN
	1    3450 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5DBECF96
P 3450 6400
F 0 "#PWR013" H 3450 6250 50  0001 C CNN
F 1 "+3.3V" H 3465 6573 50  0000 C CNN
F 2 "" H 3450 6400 50  0001 C CNN
F 3 "" H 3450 6400 50  0001 C CNN
	1    3450 6400
	1    0    0    -1  
$EndComp
Text Label 4150 7050 2    50   ~ 0
CAN_LOW
Text Label 4150 6950 2    50   ~ 0
CAN_HIGH
Wire Wire Line
	3850 7050 4150 7050
Text Label 7200 3150 2    50   ~ 0
IMU_CS
Text Label 7200 4150 2    50   ~ 0
MOSI
Wire Wire Line
	3900 950  3900 1700
Wire Wire Line
	3000 950  3150 950 
Connection ~ 3150 950 
Wire Wire Line
	3000 950  3000 1300
Connection ~ 3000 950 
$Sheet
S 750  950  500  150 
U 5DB9F80E
F0 "power" 50
F1 "power.sch" 50
$EndSheet
Wire Wire Line
	6850 4350 7200 4350
Wire Wire Line
	6850 4750 7200 4750
Wire Wire Line
	6850 4850 7200 4850
Text Label 7200 4350 2    50   ~ 0
Nuke1
Text Label 7200 4750 2    50   ~ 0
Cont1
Text Label 7200 4850 2    50   ~ 0
Cont2
Wire Wire Line
	3450 6400 3450 6650
$Comp
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 5DBD91FC
P 3450 6950
F 0 "U2" H 3450 7431 50  0000 C CNN
F 1 "SN65HVD230" H 3450 7340 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 3350 7350 50  0001 C CNN
	1    3450 6950
	1    0    0    -1  
$EndComp
NoConn ~ 3050 7050
$Comp
L Device:LED_Small D5
U 1 1 5DF0B24E
P 2600 2000
F 0 "D5" H 2600 1795 50  0000 C CNN
F 1 "TX_LED" H 2600 1886 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2600 2000 50  0001 C CNN
F 3 "~" V 2600 2000 50  0001 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 5DF0B254
P 2600 1650
F 0 "D4" H 2600 1445 50  0000 C CNN
F 1 "RX_LED" H 2600 1536 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2600 1650 50  0001 C CNN
F 3 "~" V 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5DF0B25A
P 2900 1650
F 0 "R12" V 2704 1650 50  0000 C CNN
F 1 "470" V 2795 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 1650 50  0001 C CNN
F 3 "~" H 2900 1650 50  0001 C CNN
	1    2900 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5DF0B260
P 2900 2000
F 0 "R13" V 2704 2000 50  0000 C CNN
F 1 "470" V 2795 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 2000 50  0001 C CNN
F 3 "~" H 2900 2000 50  0001 C CNN
	1    2900 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2000 2800 2000
Wire Wire Line
	2700 1650 2800 1650
Wire Wire Line
	3000 1650 3000 2000
Connection ~ 3000 1650
Wire Wire Line
	3000 1650 3000 1300
Connection ~ 3000 1300
Text Label 2150 1650 0    50   ~ 0
RADIO_RX
Wire Wire Line
	2150 1650 2500 1650
Wire Wire Line
	2150 2000 2500 2000
Text Label 2150 2000 0    50   ~ 0
RADIO_TX
$Comp
L Device:LED_Small D17
U 1 1 5DFAB0B1
P 4100 950
F 0 "D17" H 4100 745 50  0000 C CNN
F 1 "USB_LED" H 4100 836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 4100 950 50  0001 C CNN
F 3 "~" V 4100 950 50  0001 C CNN
	1    4100 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R36
U 1 1 5DFAB0B7
P 4400 950
F 0 "R36" V 4204 950 50  0000 C CNN
F 1 "470" V 4295 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 950 50  0001 C CNN
F 3 "~" H 4400 950 50  0001 C CNN
	1    4400 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 950  4300 950 
Wire Wire Line
	4000 950  3900 950 
Connection ~ 3900 950 
Wire Wire Line
	4500 950  4900 950 
Text Label 4900 950  2    50   ~ 0
USB_DET
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5DFF606F
P 1050 6300
F 0 "J9" V 1112 6344 50  0000 L CNN
F 1 "Conn_01x02_Male" V 1203 6344 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 6300 50  0001 C CNN
F 3 "~" H 1050 6300 50  0001 C CNN
	1    1050 6300
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5DFF8440
P 2200 6300
F 0 "J10" V 2262 6344 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2353 6344 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 6300 50  0001 C CNN
F 3 "~" H 2200 6300 50  0001 C CNN
	1    2200 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	650  6500 950  6500
Wire Wire Line
	1050 6500 1350 6500
Wire Wire Line
	1800 6500 2100 6500
Wire Wire Line
	2200 6500 2500 6500
Wire Wire Line
	6850 3450 7200 3450
Text Label 7200 3450 2    50   ~ 0
FLASH_CS
Wire Wire Line
	6850 3050 7200 3050
Text Label 7200 3050 2    50   ~ 0
LORA_CS
Connection ~ 3500 4400
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U1
U 1 1 5DABCA8E
P 3400 3500
F 0 "U1" H 3400 4581 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 3400 4490 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 3850 2700 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 3450 2450 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
NoConn ~ 4000 3600
NoConn ~ 4000 3400
NoConn ~ 4000 3000
NoConn ~ 4000 2900
$Comp
L Connector:TestPoint TP3
U 1 1 5E251BF2
P 4300 3100
F 0 "TP3" V 4254 3288 50  0000 L CNN
F 1 "TestPoint" V 4345 3288 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4500 3100 50  0001 C CNN
F 3 "~" H 4500 3100 50  0001 C CNN
	1    4300 3100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E252848
P 4300 3200
F 0 "TP4" V 4254 3388 50  0000 L CNN
F 1 "TestPoint" V 4345 3388 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4500 3200 50  0001 C CNN
F 3 "~" H 4500 3200 50  0001 C CNN
	1    4300 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5E260318
P 4300 3300
F 0 "TP5" V 4254 3488 50  0000 L CNN
F 1 "TestPoint" V 4345 3488 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4500 3300 50  0001 C CNN
F 3 "~" H 4500 3300 50  0001 C CNN
	1    4300 3300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5E26DF3E
P 4300 3500
F 0 "TP6" V 4254 3688 50  0000 L CNN
F 1 "TestPoint" V 4345 3688 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4500 3500 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
	1    4300 3500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5E2B5454
P 4150 6950
F 0 "TP7" V 4104 7138 50  0000 L CNN
F 1 "TestPoint" V 4195 7138 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4350 6950 50  0001 C CNN
F 3 "~" H 4350 6950 50  0001 C CNN
	1    4150 6950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5E2C32DB
P 4150 7050
F 0 "TP8" V 4104 7238 50  0000 L CNN
F 1 "TestPoint" V 4195 7238 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 4350 7050 50  0001 C CNN
F 3 "~" H 4350 7050 50  0001 C CNN
	1    4150 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6950 4150 6950
Wire Wire Line
	7300 3950 7600 3950
$Comp
L Connector:TestPoint TP12
U 1 1 5E3888D9
P 7600 3950
F 0 "TP12" V 7554 4138 50  0000 L CNN
F 1 "TestPoint" V 7645 4138 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7800 3950 50  0001 C CNN
F 3 "~" H 7800 3950 50  0001 C CNN
	1    7600 3950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 5E3963BA
P 7600 4050
F 0 "TP13" V 7554 4238 50  0000 L CNN
F 1 "TestPoint" V 7645 4238 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7800 4050 50  0001 C CNN
F 3 "~" H 7800 4050 50  0001 C CNN
	1    7600 4050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 5DEEBC25
P 7200 3450
F 0 "TP18" V 7154 3638 50  0000 L CNN
F 1 "TestPoint" V 7245 3638 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 3450 50  0001 C CNN
F 3 "~" H 7400 3450 50  0001 C CNN
	1    7200 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 5DF070A0
P 7200 3150
F 0 "TP19" V 7154 3338 50  0000 L CNN
F 1 "TestPoint" V 7245 3338 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 3150 50  0001 C CNN
F 3 "~" H 7400 3150 50  0001 C CNN
	1    7200 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 5DF30015
P 7200 3250
F 0 "TP22" V 7154 3438 50  0000 L CNN
F 1 "TestPoint" V 7245 3438 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 3250 50  0001 C CNN
F 3 "~" H 7400 3250 50  0001 C CNN
	1    7200 3250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 5DF4B310
P 7200 4650
F 0 "TP20" V 7154 4838 50  0000 L CNN
F 1 "TestPoint" V 7245 4838 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 4650 50  0001 C CNN
F 3 "~" H 7400 4650 50  0001 C CNN
	1    7200 4650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5DF58E12
P 7200 4550
F 0 "TP21" V 7154 4738 50  0000 L CNN
F 1 "TestPoint" V 7245 4738 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 4550 50  0001 C CNN
F 3 "~" H 7400 4550 50  0001 C CNN
	1    7200 4550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DF668A2
P 7200 4250
F 0 "TP2" V 7154 4438 50  0000 L CNN
F 1 "TestPoint" V 7245 4438 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 4250 50  0001 C CNN
F 3 "~" H 7400 4250 50  0001 C CNN
	1    7200 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2950 7200 2950
Text Label 5300 2850 0    50   ~ 0
LORA_INT
Wire Wire Line
	5300 2850 5650 2850
Text Label 7200 2950 2    50   ~ 0
LORA_RESET
NoConn ~ 5650 3750
NoConn ~ 5650 3850
NoConn ~ 5650 3950
NoConn ~ 5650 4050
NoConn ~ 5650 4150
NoConn ~ 5650 4250
$Comp
L Transistor_BJT:MMDT2222A Q1
U 1 1 5E4F19D5
P 1550 5400
F 0 "Q1" H 1740 5446 50  0000 L CNN
F 1 "MMDT2222A" H 1740 5355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1750 5500 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 1550 5400 50  0001 C CNN
	1    1550 5400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q1
U 2 1 5E4F3D62
P 1550 5950
F 0 "Q1" H 1740 5996 50  0000 L CNN
F 1 "MMDT2222A" H 1740 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1750 6050 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 1550 5950 50  0001 C CNN
	2    1550 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 2750 7200 2750
Text Label 7200 2750 2    50   ~ 0
Buzzer
$Comp
L Connector:TestPoint TP23
U 1 1 5DF14B43
P 7200 3350
F 0 "TP23" V 7154 3538 50  0000 L CNN
F 1 "TestPoint" V 7245 3538 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7200 3350
	0    1    1    0   
$EndComp
Text Label 7200 3350 2    50   ~ 0
MAG_CS
Wire Wire Line
	7200 3350 6850 3350
Text Label 7200 4450 2    50   ~ 0
Nuke2
Wire Wire Line
	6850 4450 7200 4450
$Comp
L Connector:TestPoint TP25
U 1 1 5E3F6828
P 7200 3050
F 0 "TP25" V 7154 3238 50  0000 L CNN
F 1 "TestPoint" V 7245 3238 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 7400 3050 50  0001 C CNN
F 3 "~" H 7400 3050 50  0001 C CNN
	1    7200 3050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D9
U 1 1 5E667A26
P 2200 2600
F 0 "D9" V 2154 2679 50  0000 L CNN
F 1 "D_Schottky" V 2245 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 2200 2600 50  0001 C CNN
F 3 "~" H 2200 2600 50  0001 C CNN
	1    2200 2600
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR053
U 1 1 5E668CEC
P 2200 2450
F 0 "#PWR053" H 2200 2300 50  0001 C CNN
F 1 "VDD" H 2217 2623 50  0000 C CNN
F 2 "" H 2200 2450 50  0001 C CNN
F 3 "" H 2200 2450 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3500 2200 2750
Connection ~ 2200 2750
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 6193041D
P 1000 3350
F 0 "J?" H 1107 4217 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1107 4126 50  0000 C CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1150 3350 50  0001 C CNN
	1    1000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3450 1600 3550
Wire Wire Line
	1600 3550 1650 3550
Connection ~ 1600 3550
Text Label 1650 3550 0    50   ~ 0
Data+
Wire Wire Line
	1600 3350 1600 3300
Wire Wire Line
	1600 3300 1650 3300
Connection ~ 1600 3300
Wire Wire Line
	1600 3300 1600 3250
Text Label 1650 3300 0    50   ~ 0
Data-
Text Label 2800 3900 2    50   ~ 0
Data+
Text Label 2800 4000 2    50   ~ 0
Data-
Wire Wire Line
	2200 3500 2800 3500
Text Label 2000 4350 1    50   ~ 0
Data+
Text Label 1900 4350 1    50   ~ 0
Data-
Text Label 1800 4350 1    50   ~ 0
VBUS
Connection ~ 2700 3800
$Comp
L Device:R_Small R?
U 1 1 619CC6D3
P 2300 4000
F 0 "R?" H 2359 4046 50  0000 L CNN
F 1 "47.5k" H 2359 3955 50  0000 L CNN
F 2 "" H 2300 4000 50  0001 C CNN
F 3 "~" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3800 2300 3800
Wire Wire Line
	2300 3900 2300 3800
Connection ~ 2300 3800
Wire Wire Line
	2300 3800 2700 3800
$Comp
L power:GND #PWR?
U 1 1 619E3CD1
P 2300 4100
F 0 "#PWR?" H 2300 3850 50  0001 C CNN
F 1 "GND" H 2305 3927 50  0000 C CNN
F 2 "" H 2300 4100 50  0001 C CNN
F 3 "" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
NoConn ~ 1600 3850
NoConn ~ 1600 3950
$Comp
L Device:R_Small R?
U 1 1 619F9DBD
P 2100 3800
F 0 "R?" V 1904 3800 50  0000 C CNN
F 1 "22.1k" V 1995 3800 50  0000 C CNN
F 2 "" H 2100 3800 50  0001 C CNN
F 3 "~" H 2100 3800 50  0001 C CNN
	1    2100 3800
	0    1    1    0   
$EndComp
Text Label 2000 3800 2    50   ~ 0
VBUS
Text Label 1600 2750 0    50   ~ 0
VBUS
$EndSCHEMATC
