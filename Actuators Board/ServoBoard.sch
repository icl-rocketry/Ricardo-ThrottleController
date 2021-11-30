EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L power:GND #PWR021
U 1 1 5DA6110D
P 4200 5350
F 0 "#PWR021" H 4200 5100 50  0001 C CNN
F 1 "GND" H 4205 5177 50  0000 C CNN
F 2 "" H 4200 5350 50  0001 C CNN
F 3 "" H 4200 5350 50  0001 C CNN
	1    4200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5150 4200 5350
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
F 1 "0.1uF" V 762 7550 50  0000 C CNN
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
Text Notes 10600 7700 0    50   ~ 0
0.1\n\n
Text Label 5350 3650 2    50   ~ 0
MISO
Text Label 5350 3550 2    50   ~ 0
SCLK
Text Label 1550 7550 2    50   ~ 0
EN
Text Label 5350 2350 2    50   ~ 0
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
F 1 "0.1uF" V 2012 6700 50  0000 C CNN
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
F 1 "0.1uF" V 862 6700 50  0000 C CNN
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
$Comp
L Device:LED_Small D3
U 1 1 5DB110D6
P 1000 1200
F 0 "D3" H 1000 995 50  0000 C CNN
F 1 "TX_LED" H 1000 1086 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 1000 1200 50  0001 C CNN
F 3 "~" V 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5DB13286
P 1000 850
F 0 "D2" H 1000 645 50  0000 C CNN
F 1 "RX_LED" H 1000 736 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 1000 850 50  0001 C CNN
F 3 "~" V 1000 850 50  0001 C CNN
	1    1000 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5DB4A6E6
P 1300 850
F 0 "R10" V 1104 850 50  0000 C CNN
F 1 "470" V 1195 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1300 850 50  0001 C CNN
F 3 "~" H 1300 850 50  0001 C CNN
	1    1300 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DB4B3E7
P 1300 1200
F 0 "R11" V 1104 1200 50  0000 C CNN
F 1 "470" V 1195 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1300 1200 50  0001 C CNN
F 3 "~" H 1300 1200 50  0001 C CNN
	1    1300 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1200 1200 1200
Wire Wire Line
	1100 850  1200 850 
Wire Wire Line
	700  850  900  850 
Wire Wire Line
	700  1200 900  1200
$Comp
L power:GND #PWR012
U 1 1 5DB5396A
P 2300 1600
F 0 "#PWR012" H 2300 1350 50  0001 C CNN
F 1 "GND" H 2305 1427 50  0000 C CNN
F 2 "" H 2300 1600 50  0001 C CNN
F 3 "" H 2300 1600 50  0001 C CNN
	1    2300 1600
	1    0    0    -1  
$EndComp
Text Label 700  850  0    50   ~ 0
RXD
Text Label 700  1200 0    50   ~ 0
TXD
Wire Wire Line
	5000 2350 5350 2350
Wire Wire Line
	5000 2450 5350 2450
Wire Wire Line
	5000 2650 5350 2650
Wire Wire Line
	5000 3550 5350 3550
Wire Wire Line
	5000 3650 5350 3650
Wire Wire Line
	5000 3950 5350 3950
Text Label 5350 2450 2    50   ~ 0
RXD
Text Label 5350 2650 2    50   ~ 0
TXD
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
L power:+3.3V #PWR011
U 1 1 5DC16656
P 1550 850
F 0 "#PWR011" H 1550 700 50  0001 C CNN
F 1 "+3.3V" H 1565 1023 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5DC1F7E5
P 2150 850
F 0 "D6" H 2150 645 50  0000 C CNN
F 1 "PWR_LED" H 2150 736 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2150 850 50  0001 C CNN
F 3 "~" V 2150 850 50  0001 C CNN
	1    2150 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5DC1F7EB
P 1850 850
F 0 "R14" V 1654 850 50  0000 C CNN
F 1 "470" V 1745 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 850 50  0001 C CNN
F 3 "~" H 1850 850 50  0001 C CNN
	1    1850 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 850  2050 850 
Wire Wire Line
	1550 850  1750 850 
Wire Wire Line
	2300 850  2250 850 
Wire Wire Line
	5000 4450 5350 4450
Wire Wire Line
	5000 4350 5350 4350
Text Label 5350 4450 2    50   ~ 0
CAN_RX
Text Label 5350 4350 2    50   ~ 0
CAN_TX
Text Label 5350 3950 2    50   ~ 0
MOSI
Wire Wire Line
	2300 850  2300 1600
Wire Wire Line
	1400 850  1550 850 
Connection ~ 1550 850 
Wire Wire Line
	1400 850  1400 1200
Connection ~ 1400 850 
$Comp
L Device:LED_Small D17
U 1 1 5DFAB0B1
P 2500 850
F 0 "D17" H 2500 645 50  0000 C CNN
F 1 "USB_LED" H 2500 736 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2500 850 50  0001 C CNN
F 3 "~" V 2500 850 50  0001 C CNN
	1    2500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R36
U 1 1 5DFAB0B7
P 2800 850
F 0 "R36" V 2604 850 50  0000 C CNN
F 1 "470" V 2695 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 850 50  0001 C CNN
F 3 "~" H 2800 850 50  0001 C CNN
	1    2800 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 850  2700 850 
Wire Wire Line
	2400 850  2300 850 
Connection ~ 2300 850 
Wire Wire Line
	2900 850  3300 850 
Text Label 3300 850  2    50   ~ 0
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
$Comp
L Connector:TestPoint TP20
U 1 1 5DF4B310
P 5350 4450
F 0 "TP20" V 5304 4638 50  0000 L CNN
F 1 "TestPoint" V 5395 4638 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5550 4450 50  0001 C CNN
F 3 "~" H 5550 4450 50  0001 C CNN
	1    5350 4450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5DF58E12
P 5350 4350
F 0 "TP21" V 5304 4538 50  0000 L CNN
F 1 "TestPoint" V 5395 4538 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5550 4350 50  0001 C CNN
F 3 "~" H 5550 4350 50  0001 C CNN
	1    5350 4350
	0    1    1    0   
$EndComp
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
$Comp
L RF_Module:ESP32-PICO-D4 U?
U 1 1 618B08BE
P 4200 3550
F 0 "U?" H 4200 1861 50  0000 C CNN
F 1 "ESP32-PICO-D4" H 4200 1770 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.3x5.3mm" H 4200 1850 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-pico-d4_datasheet_en.pdf" H 4450 2550 50  0001 C CNN
	1    4200 3550
	1    0    0    -1  
$EndComp
Text Label 3200 2150 0    50   ~ 0
EN
Wire Wire Line
	3200 2150 3400 2150
Text Notes 7400 7500 0    50   ~ 0
Board Template\n
$Sheet
S 1200 3200 1000 500 
U 61925999
F0 "USB -> UART" 50
F1 "usb-uart.sch" 50
F2 "RTS" O R 2200 3250 50 
F3 "RXD" O R 2200 3350 50 
F4 "TXD" O R 2200 3450 50 
F5 "DTR" O R 2200 3550 50 
$EndSheet
$Comp
L Connector:TestPoint TP?
U 1 1 6199CF4E
P 1350 2950
AR Path="/6199CF4E" Ref="TP?"  Part="1" 
AR Path="/61925999/6199CF4E" Ref="TP?"  Part="1" 
F 0 "TP?" V 1304 3138 50  0000 L CNN
F 1 "TestPoint" V 1395 3138 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1550 2950 50  0001 C CNN
F 3 "~" H 1550 2950 50  0001 C CNN
	1    1350 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 6199CF54
P 1350 2850
AR Path="/6199CF54" Ref="TP?"  Part="1" 
AR Path="/61925999/6199CF54" Ref="TP?"  Part="1" 
F 0 "TP?" V 1304 3038 50  0000 L CNN
F 1 "TestPoint" V 1395 3038 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1550 2850 50  0001 C CNN
F 3 "~" H 1550 2850 50  0001 C CNN
	1    1350 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 6199CF5A
P 1350 2750
AR Path="/6199CF5A" Ref="TP?"  Part="1" 
AR Path="/61925999/6199CF5A" Ref="TP?"  Part="1" 
F 0 "TP?" V 1304 2938 50  0000 L CNN
F 1 "TestPoint" V 1395 2938 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1550 2750 50  0001 C CNN
F 3 "~" H 1550 2750 50  0001 C CNN
	1    1350 2750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 6199CF60
P 1350 2650
AR Path="/6199CF60" Ref="TP?"  Part="1" 
AR Path="/61925999/6199CF60" Ref="TP?"  Part="1" 
F 0 "TP?" V 1304 2838 50  0000 L CNN
F 1 "TestPoint" V 1395 2838 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 1550 2650 50  0001 C CNN
F 3 "~" H 1550 2650 50  0001 C CNN
	1    1350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3250 2300 3250
Wire Wire Line
	2200 3350 2300 3350
Wire Wire Line
	2200 3450 2300 3450
Wire Wire Line
	2200 3550 2300 3550
Text Label 2300 3250 0    50   ~ 0
RTS
Text Label 2300 3350 0    50   ~ 0
RXD
Text Label 2300 3450 0    50   ~ 0
TXD
Text Label 2300 3550 0    50   ~ 0
DTR
Text Label 1350 2650 2    50   ~ 0
RTS
Text Label 1350 2750 2    50   ~ 0
RXD
Text Label 1350 2850 2    50   ~ 0
TXD
Text Label 1350 2950 2    50   ~ 0
DTR
$Sheet
S 3250 6750 1350 600 
U 61942B9A
F0 "CAN-BUS" 50
F1 "can.sch" 50
F2 "CAN_TX" I R 4600 6850 50 
F3 "CAN_RX" O R 4600 6950 50 
$EndSheet
$Comp
L iclr:TPS54233D U?
U 1 1 61945344
P 7450 3100
F 0 "U?" H 8050 3365 50  0000 C CNN
F 1 "TPS54233D" H 8050 3274 50  0000 C CNN
F 2 "Texas_Instruments-TPS54233D-*" H 7450 3500 50  0001 L CNN
F 3 "http://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=TPS54233&fileType=pdf" H 7450 3600 50  0001 L CNN
F 4 "MS-012AA" H 7450 3700 50  0001 L CNN "Code  JEDEC"
F 5 "Package Specification" H 7450 3800 50  0001 L CNN "Component Link 2 Description"
F 6 "http://www.ti.com/litv/pdf/msoi002j" H 7450 3900 50  0001 L CNN "Component Link 2 URL"
F 7 "URL Link1" H 7450 4000 50  0001 L CNN "Component Link 3 Description"
F 8 "Samples URL:http://www.ti.com/product/tps54233#samples" H 7450 4100 50  0001 L CNN "Component Link 3 URL"
F 9 "SLUS859B" H 7450 4200 50  0001 L CNN "Datasheet Version"
F 10 "90" H 7450 4300 50  0001 L CNN "Duty CycleMax"
F 11 "2" H 7450 4400 50  0001 L CNN "Iout Max A"
F 12 "0.11" H 7450 4500 50  0001 L CNN "Iq Typm A"
F 13 "Surface Mount" H 7450 4600 50  0001 L CNN "Mounting Technology"
F 14 "8-Pin Plastic Small Outline Integrated Circuit, 4.9 x 3.9 mm, Pitch 1.27 mm Pitch" H 7450 4700 50  0001 L CNN "Package Description"
F 15 "revM, Jun-2011" H 7450 4800 50  0001 L CNN "Package Version"
F 16 "Catalog" H 7450 4900 50  0001 L CNN "Rating"
F 17 "1" H 7450 5000 50  0001 L CNN "Regulated Outputs"
F 18 "Step-Down Regulator" H 7450 5100 50  0001 L CNN "Sub Family"
F 19 "2.3" H 7450 5200 50  0001 L CNN "Switch Current LimitTypA"
F 20 "Buck" H 7450 5300 50  0001 L CNN "Topology"
F 21 "28" H 7450 5400 50  0001 L CNN "Vin Max V"
F 22 "3.5" H 7450 5500 50  0001 L CNN "Vin Min V"
F 23 "25" H 7450 5600 50  0001 L CNN "Vout Max V"
F 24 "0.8" H 7450 5700 50  0001 L CNN "Vout Min V"
F 25 "IC" H 7450 5800 50  0001 L CNN "category"
F 26 "1489665" H 7450 5900 50  0001 L CNN "ciiva ids"
F 27 "57142109115245d6" H 7450 6000 50  0001 L CNN "library id"
F 28 "Texas Instruments" H 7450 6100 50  0001 L CNN "manufacturer"
F 29 "D0008A" H 7450 6200 50  0001 L CNN "package"
F 30 "1464593322" H 7450 6300 50  0001 L CNN "release date"
F 31 "Yes" H 7450 6400 50  0001 L CNN "rohs"
F 32 "4D6E46D7-D5EC-4CD6-8208-6BA05138FBDD" H 7450 6500 50  0001 L CNN "vault revision"
F 33 "yes" H 7450 6600 50  0001 L CNN "imported"
	1    7450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61948B1D
P 8550 3600
F 0 "#PWR?" H 8550 3350 50  0001 C CNN
F 1 "GND" H 8555 3427 50  0000 C CNN
F 2 "" H 8550 3600 50  0001 C CNN
F 3 "" H 8550 3600 50  0001 C CNN
	1    8550 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61996E25
P 8650 3300
F 0 "C?" V 8879 3300 50  0000 C CNN
F 1 "0.1uF" V 8788 3300 50  0000 C CNN
F 2 "" H 8650 3300 50  0001 C CNN
F 3 "~" H 8650 3300 50  0001 C CNN
	1    8650 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 3100 8750 3100
Wire Wire Line
	8750 3300 8750 3100
$Comp
L Device:L L?
U 1 1 6199CC35
P 9050 3100
F 0 "L?" V 9240 3100 50  0000 C CNN
F 1 "PE-92111KNL" V 9149 3100 50  0000 C CNN
F 2 "" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3100 9300 3100
$Comp
L Device:CP1_Small C?
U 1 1 619A1E4E
P 9300 3200
F 0 "C?" H 9391 3246 50  0000 L CNN
F 1 "470uF" H 9391 3155 50  0000 L CNN
F 2 "" H 9300 3200 50  0001 C CNN
F 3 "~" H 9300 3200 50  0001 C CNN
	1    9300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619A60AD
P 9300 3400
F 0 "#PWR?" H 9300 3150 50  0001 C CNN
F 1 "GND" H 9305 3227 50  0000 C CNN
F 2 "" H 9300 3400 50  0001 C CNN
F 3 "" H 9300 3400 50  0001 C CNN
	1    9300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3400 9300 3400
Wire Wire Line
	9300 3300 9300 3400
Connection ~ 9300 3400
Wire Wire Line
	8900 3100 8750 3100
Connection ~ 8750 3100
$Comp
L Diode:B340 D?
U 1 1 619BFC91
P 8900 3250
F 0 "D?" V 8854 3330 50  0000 L CNN
F 1 "B340" V 8945 3330 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 8900 3075 50  0001 C CNN
F 3 "http://www.jameco.com/Jameco/Products/ProdDS/1538777.pdf" H 8900 3250 50  0001 C CNN
	1    8900 3250
	0    1    1    0   
$EndComp
Connection ~ 8900 3100
Wire Wire Line
	7550 3100 7450 3100
Wire Wire Line
	7450 3100 7450 3000
$Comp
L Device:CP1_Small C?
U 1 1 619D12BE
P 7450 2900
F 0 "C?" H 7359 2854 50  0000 R CNN
F 1 "10uF" H 7359 2945 50  0000 R CNN
F 2 "" H 7450 2900 50  0001 C CNN
F 3 "~" H 7450 2900 50  0001 C CNN
	1    7450 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619D1D2A
P 7450 2800
F 0 "#PWR?" H 7450 2550 50  0001 C CNN
F 1 "GND" H 7455 2627 50  0000 C CNN
F 2 "" H 7450 2800 50  0001 C CNN
F 3 "" H 7450 2800 50  0001 C CNN
	1    7450 2800
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR?
U 1 1 619E117F
P 7300 3100
F 0 "#PWR?" H 7300 2950 50  0001 C CNN
F 1 "+24V" H 7315 3273 50  0000 C CNN
F 2 "" H 7300 3100 50  0001 C CNN
F 3 "" H 7300 3100 50  0001 C CNN
	1    7300 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3600 7550 3750
$Comp
L Device:C_Small C?
U 1 1 619EFCD4
P 7550 3850
F 0 "C?" H 7642 3896 50  0000 L CNN
F 1 "130pF" H 7642 3805 50  0000 L CNN
F 2 "" H 7550 3850 50  0001 C CNN
F 3 "~" H 7550 3850 50  0001 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 619F060A
P 7550 4050
F 0 "R?" H 7609 4096 50  0000 L CNN
F 1 "54.9K" H 7609 4005 50  0000 L CNN
F 2 "" H 7550 4050 50  0001 C CNN
F 3 "~" H 7550 4050 50  0001 C CNN
	1    7550 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 619F38CB
P 7350 3850
F 0 "C?" H 7350 3950 50  0000 L CNN
F 1 "130pF" H 7250 3750 50  0000 L CNN
F 2 "" H 7350 3850 50  0001 C CNN
F 3 "~" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3600 7350 3600
Wire Wire Line
	7350 3600 7350 3750
Connection ~ 7550 3600
Wire Wire Line
	7550 3500 7150 3500
$Comp
L Device:C_Small C?
U 1 1 61A0133C
P 7150 3850
F 0 "C?" H 6850 3900 50  0000 L CNN
F 1 "10 nF" H 6850 3800 50  0000 L CNN
F 2 "" H 7150 3850 50  0001 C CNN
F 3 "~" H 7150 3850 50  0001 C CNN
	1    7150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3500 7150 3750
Wire Wire Line
	7550 4150 7350 4150
Wire Wire Line
	7350 3950 7350 4150
Wire Wire Line
	7150 3950 7150 4150
Wire Wire Line
	7150 4150 7350 4150
Connection ~ 7350 4150
Wire Wire Line
	9300 3100 9850 3100
Connection ~ 9300 3100
$Comp
L Device:R_Small R?
U 1 1 61A2C418
P 9850 3200
F 0 "R?" H 9909 3246 50  0000 L CNN
F 1 "10K" H 9909 3155 50  0000 L CNN
F 2 "" H 9850 3200 50  0001 C CNN
F 3 "~" H 9850 3200 50  0001 C CNN
	1    9850 3200
	1    0    0    -1  
$EndComp
Text Label 9800 3400 2    50   ~ 0
VSENSE
Wire Wire Line
	9850 3300 9850 3400
$Comp
L Device:R_Small R?
U 1 1 61A32DEE
P 9850 3600
F 0 "R?" H 9909 3646 50  0000 L CNN
F 1 "1.5K" H 9909 3555 50  0000 L CNN
F 2 "" H 9850 3600 50  0001 C CNN
F 3 "~" H 9850 3600 50  0001 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3400 9850 3400
Connection ~ 9850 3400
Wire Wire Line
	9850 3400 9850 3500
Text Label 8550 3450 0    50   ~ 0
VSENSE
Wire Wire Line
	8550 3450 8550 3400
Wire Wire Line
	9850 3700 9850 3750
$Comp
L power:GND #PWR?
U 1 1 61A44D20
P 9850 3750
F 0 "#PWR?" H 9850 3500 50  0001 C CNN
F 1 "GND" H 9855 3577 50  0000 C CNN
F 2 "" H 9850 3750 50  0001 C CNN
F 3 "" H 9850 3750 50  0001 C CNN
	1    9850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A48B58
P 7350 4200
F 0 "#PWR?" H 7350 3950 50  0001 C CNN
F 1 "GND" H 7355 4027 50  0000 C CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4150 7350 4200
Wire Wire Line
	9850 3100 10050 3100
Connection ~ 9850 3100
$Comp
L power:+6V #PWR?
U 1 1 61A52802
P 10050 3100
F 0 "#PWR?" H 10050 2950 50  0001 C CNN
F 1 "+6V" H 10065 3273 50  0000 C CNN
F 2 "" H 10050 3100 50  0001 C CNN
F 3 "" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3100 7300 3100
Connection ~ 7450 3100
NoConn ~ 7550 3300
Wire Notes Line
	7450 3200 7800 3200
Wire Notes Line
	7800 3200 7800 3350
Wire Notes Line
	7800 3350 7450 3350
Wire Notes Line
	7450 3350 7450 3200
Text Notes 7850 3350 0    24   ~ 0
EN pulled below \n1.25V to disable, \nfloating to enable\n
$Comp
L Motor:Motor_Servo M?
U 1 1 61A7A290
P 10200 4800
F 0 "M?" H 10532 4865 50  0000 L CNN
F 1 "Motor_Servo" H 10532 4774 50  0000 L CNN
F 2 "" H 10200 4610 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 10200 4610 50  0001 C CNN
	1    10200 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 61A7BE4F
P 9050 5000
F 0 "J?" H 9150 4750 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9150 4650 50  0000 C CNN
F 2 "" H 9050 5000 50  0001 C CNN
F 3 "~" H 9050 5000 50  0001 C CNN
	1    9050 5000
	-1   0    0    1   
$EndComp
Text Label 8850 4900 2    50   ~ 0
ServoPWM
NoConn ~ 9900 4700
NoConn ~ 9900 4800
NoConn ~ 9900 4900
Text Label 5400 3250 2    50   ~ 0
ServoPWM
Wire Wire Line
	5000 3250 5400 3250
$Comp
L Device:C_Small C?
U 1 1 61AA4813
P 8100 5100
F 0 "C?" H 8192 5146 50  0000 L CNN
F 1 "100uF" H 8192 5055 50  0000 L CNN
F 2 "" H 8100 5100 50  0001 C CNN
F 3 "~" H 8100 5100 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61AA572C
P 7950 5100
F 0 "C?" H 7650 5150 50  0000 L CNN
F 1 "10uF" H 7650 5050 50  0000 L CNN
F 2 "" H 7950 5100 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
	1    7950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5000 7950 5000
Wire Wire Line
	7950 5200 8100 5200
Wire Wire Line
	8100 5200 8100 5300
Connection ~ 8100 5200
$Comp
L power:GND #PWR?
U 1 1 61ACF34C
P 8100 5300
F 0 "#PWR?" H 8100 5050 50  0001 C CNN
F 1 "GND" H 8105 5127 50  0000 C CNN
F 2 "" H 8100 5300 50  0001 C CNN
F 3 "" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACFC73
P 8850 5100
F 0 "#PWR?" H 8850 4850 50  0001 C CNN
F 1 "GND" V 8855 4972 50  0000 R CNN
F 2 "" H 8850 5100 50  0001 C CNN
F 3 "" H 8850 5100 50  0001 C CNN
	1    8850 5100
	0    1    1    0   
$EndComp
Connection ~ 8100 5000
Wire Wire Line
	7950 5000 7950 4900
Connection ~ 7950 5000
$Comp
L power:+6V #PWR?
U 1 1 61AF080C
P 7950 4900
F 0 "#PWR?" H 7950 4750 50  0001 C CNN
F 1 "+6V" H 7965 5073 50  0000 C CNN
F 2 "" H 7950 4900 50  0001 C CNN
F 3 "" H 7950 4900 50  0001 C CNN
	1    7950 4900
	1    0    0    -1  
$EndComp
$Sheet
S 5900 750  500  150 
U 61A24258
F0 "rfantenna" 50
F1 "rfantenna.sch" 50
F2 "LNA_IN" B L 5900 800 50 
$EndSheet
Text Label 5850 800  2    50   ~ 0
LNA_IN
Wire Wire Line
	5900 800  5850 800 
Text Label 5000 2150 0    50   ~ 0
LNA_IN
Wire Wire Line
	4600 6850 4700 6850
Wire Wire Line
	4600 6950 4700 6950
Text Label 4700 6850 0    50   ~ 0
CAN_TX
Text Label 4700 6950 0    50   ~ 0
CAN_RX
Wire Wire Line
	8100 5000 8850 5000
$Comp
L power:+3.3V #PWR?
U 1 1 61AA6780
P 3600 1800
AR Path="/61AA6780" Ref="#PWR?"  Part="1" 
AR Path="/61AA560B/61AA6780" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 1650 50  0001 C CNN
F 1 "+3.3V" H 3615 1973 50  0000 C CNN
F 2 "" H 3600 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
	1    3600 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61AA6786
P 3700 1700
AR Path="/61AA6786" Ref="C?"  Part="1" 
AR Path="/61AA560B/61AA6786" Ref="C?"  Part="1" 
F 0 "C?" H 3500 1750 50  0000 L CNN
F 1 "10uF" H 3450 1650 50  0000 L CNN
F 2 "" H 3700 1700 50  0001 C CNN
F 3 "~" H 3700 1700 50  0001 C CNN
	1    3700 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61AA678C
P 3500 1700
AR Path="/61AA678C" Ref="C?"  Part="1" 
AR Path="/61AA560B/61AA678C" Ref="C?"  Part="1" 
F 0 "C?" H 3592 1746 50  0000 L CNN
F 1 "0.1uF" H 3592 1655 50  0000 L CNN
F 2 "" H 3500 1700 50  0001 C CNN
F 3 "~" H 3500 1700 50  0001 C CNN
	1    3500 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 1800 3600 1800
Wire Wire Line
	3700 1600 3600 1600
$Comp
L power:GND #PWR?
U 1 1 61AA6794
P 3600 1600
AR Path="/61AA6794" Ref="#PWR?"  Part="1" 
AR Path="/61AA560B/61AA6794" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 1350 50  0001 C CNN
F 1 "GND" H 3605 1427 50  0000 C CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	-1   0    0    1   
$EndComp
Connection ~ 3600 1600
Wire Wire Line
	3600 1600 3500 1600
Connection ~ 3600 1800
Wire Wire Line
	3600 1800 3500 1800
Wire Wire Line
	4000 1900 4100 1900
Wire Wire Line
	4100 1900 4100 1950
Wire Wire Line
	4000 1900 4000 1950
Wire Wire Line
	4100 1900 4200 1900
Wire Wire Line
	4200 1900 4200 1950
Connection ~ 4100 1900
Wire Wire Line
	4200 1900 4300 1900
Wire Wire Line
	4300 1900 4300 1950
Connection ~ 4200 1900
Wire Wire Line
	3700 1800 4000 1800
Wire Wire Line
	4000 1800 4000 1900
Connection ~ 3700 1800
Connection ~ 4000 1900
$EndSCHEMATC
