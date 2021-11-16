EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
P 4100 1950
F 0 "#PWR020" H 4100 1800 50  0001 C CNN
F 1 "+3.3V" H 4115 2123 50  0000 C CNN
F 2 "" H 4100 1950 50  0001 C CNN
F 3 "" H 4100 1950 50  0001 C CNN
	1    4100 1950
	1    0    0    -1  
$EndComp
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
$EndSheet
$Comp
L iclr:MAX14871EUE+ U?
U 1 1 6194180B
P 8050 1800
F 0 "U?" H 8050 2665 50  0000 C CNN
F 1 "MAX14871EUE+" H 8050 2574 50  0000 C CNN
F 2 "SOP65P637X110-16N" H 8050 1800 50  0001 L BNN
F 3 "" H 8050 1800 50  0001 L BNN
F 4 "0.15" H 8050 1800 50  0001 L BNN "A1_MIN"
F 5 "None" H 8050 1800 50  0001 L BNN "A1_NOM"
F 6 "6.5" H 8050 1800 50  0001 L BNN "E_MAX"
F 7 "None" H 8050 1800 50  0001 L BNN "A1_MAX"
F 8 "70440" H 8050 1800 50  0001 L BNN "SNAPEDA_PACKAGE_ID"
F 9 "0.65" H 8050 1800 50  0001 L BNN "ENOM"
F 10 "1.1" H 8050 1800 50  0001 L BNN "A_MAX"
F 11 "1.1" H 8050 1800 50  0001 L BNN "A_NOM"
F 12 "3.1" H 8050 1800 50  0001 L BNN "D2_MAX"
F 13 "1.1" H 8050 1800 50  0001 L BNN "A_MIN"
F 14 "0.3" H 8050 1800 50  0001 L BNN "B_MAX"
F 15 "IPC 7351B" H 8050 1800 50  0001 L BNN "STANDARD"
F 16 "0.7" H 8050 1800 50  0001 L BNN "L_MAX"
F 17 "4.9" H 8050 1800 50  0001 L BNN "D_MIN"
F 18 "4.4" H 8050 1800 50  0001 L BNN "E1_NOM"
F 19 "16.0" H 8050 1800 50  0001 L BNN "PIN_COUNT"
F 20 "0.245" H 8050 1800 50  0001 L BNN "B_NOM"
F 21 "None" H 8050 1800 50  0001 L BNN "D2_MIN"
F 22 "5.1" H 8050 1800 50  0001 L BNN "D_MAX"
F 23 "5.0" H 8050 1800 50  0001 L BNN "D_NOM"
F 24 "4.5" H 8050 1800 50  0001 L BNN "E1_MAX"
F 25 "0.19" H 8050 1800 50  0001 L BNN "B_MIN"
F 26 "Maxim Integrated" H 8050 1800 50  0001 L BNN "MANUFACTURER"
F 27 "1.1mm" H 8050 1800 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 28 "0.5" H 8050 1800 50  0001 L BNN "L_MIN"
F 29 "0.6" H 8050 1800 50  0001 L BNN "L_NOM"
F 30 "6.375" H 8050 1800 50  0001 L BNN "E_NOM"
F 31 "0" H 8050 1800 50  0001 L BNN "PARTREV"
F 32 "None" H 8050 1800 50  0001 L BNN "D2_NOM"
F 33 "6.25" H 8050 1800 50  0001 L BNN "E_MIN"
F 34 "None" H 8050 1800 50  0001 L BNN "E2_NOM"
F 35 "4.3" H 8050 1800 50  0001 L BNN "E1_MIN"
F 36 "3.1" H 8050 1800 50  0001 L BNN "E2_MAX"
F 37 "None" H 8050 1800 50  0001 L BNN "E2_MIN"
	1    8050 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 6194A5D2
P 8150 3750
F 0 "J?" H 8258 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8258 4040 50  0000 C CNN
F 2 "" H 8150 3750 50  0001 C CNN
F 3 "~" H 8150 3750 50  0001 C CNN
	1    8150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61944E08
P 7250 1400
F 0 "#PWR?" H 7250 1150 50  0001 C CNN
F 1 "GND" V 7255 1272 50  0000 R CNN
F 2 "" H 7250 1400 50  0001 C CNN
F 3 "" H 7250 1400 50  0001 C CNN
	1    7250 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 1400 7350 1400
Wire Wire Line
	7350 1500 6950 1500
Text Label 6950 1500 2    50   ~ 0
PWM
Wire Wire Line
	7350 1600 7200 1600
Text Label 7200 1600 2    50   ~ 0
DIR
$Comp
L Device:R_Small R?
U 1 1 61950B41
P 6750 1900
F 0 "R?" H 6809 1946 50  0000 L CNN
F 1 "R_Small" H 6809 1855 50  0000 L CNN
F 2 "" H 6750 1900 50  0001 C CNN
F 3 "~" H 6750 1900 50  0001 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6195168F
P 6750 1800
F 0 "#PWR?" H 6750 1650 50  0001 C CNN
F 1 "+3.3V" H 6765 1973 50  0000 C CNN
F 2 "" H 6750 1800 50  0001 C CNN
F 3 "" H 6750 1800 50  0001 C CNN
	1    6750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2000 6700 2000
$Comp
L Device:R_Small R?
U 1 1 6195484F
P 6600 2000
F 0 "R?" H 6659 2046 50  0000 L CNN
F 1 "R_Small" H 6659 1955 50  0000 L CNN
F 2 "" H 6600 2000 50  0001 C CNN
F 3 "~" H 6600 2000 50  0001 C CNN
	1    6600 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6195519D
P 6500 2000
F 0 "#PWR?" H 6500 1750 50  0001 C CNN
F 1 "GND" H 6505 1827 50  0000 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	0    1    1    0   
$EndComp
Connection ~ 6750 2000
Wire Wire Line
	6750 2000 7350 2000
$Comp
L power:+24V #PWR?
U 1 1 619664D0
P 8800 950
F 0 "#PWR?" H 8800 800 50  0001 C CNN
F 1 "+24V" H 8815 1123 50  0000 C CNN
F 2 "" H 8800 950 50  0001 C CNN
F 3 "" H 8800 950 50  0001 C CNN
	1    8800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 950  8950 950 
$Comp
L Device:C_Small C?
U 1 1 6196A0BF
P 8950 1050
F 0 "C?" H 9042 1096 50  0000 L CNN
F 1 "C_Small" H 9042 1005 50  0000 L CNN
F 2 "" H 8950 1050 50  0001 C CNN
F 3 "~" H 8950 1050 50  0001 C CNN
	1    8950 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6196B318
P 8950 1150
F 0 "#PWR?" H 8950 900 50  0001 C CNN
F 1 "GND" H 8955 977 50  0000 C CNN
F 2 "" H 8950 1150 50  0001 C CNN
F 3 "" H 8950 1150 50  0001 C CNN
	1    8950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1200 8800 1200
Wire Wire Line
	8800 1200 8800 950 
Connection ~ 8800 950 
Text Label 7350 2200 2    50   ~ 0
COMM
Text Label 8750 1800 0    50   ~ 0
COMM
Wire Wire Line
	8750 1800 8750 1950
$Comp
L Device:R_Small R?
U 1 1 61973011
P 8750 2050
F 0 "R?" H 8809 2096 50  0000 L CNN
F 1 "R_Small" H 8809 2005 50  0000 L CNN
F 2 "" H 8750 2050 50  0001 C CNN
F 3 "~" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2150 8750 2400
Wire Wire Line
	8750 2400 8850 2400
Connection ~ 8750 2400
$Comp
L power:GND #PWR?
U 1 1 6197A5B9
P 8850 2400
F 0 "#PWR?" H 8850 2150 50  0001 C CNN
F 1 "GND" V 8855 2272 50  0000 R CNN
F 2 "" H 8850 2400 50  0001 C CNN
F 3 "" H 8850 2400 50  0001 C CNN
	1    8850 2400
	0    -1   -1   0   
$EndComp
NoConn ~ 7350 2100
$EndSCHEMATC
