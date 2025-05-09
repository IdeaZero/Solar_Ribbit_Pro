EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Common:NPM1300-QEAA-R IC?
U 1 1 67902267
P 6900 3350
AR Path="/677CD9BA/67902267" Ref="IC?"  Part="1" 
AR Path="/678C23F4/67902267" Ref="IC?"  Part="1" 
AR Path="/679116BF/67902267" Ref="IC?"  Part="1" 
F 0 "IC?" H 7250 5765 50  0000 C CNN
F 1 "NPM1300-QEAA-R" H 7250 5674 50  0000 C CNN
F 2 "Common:QFN50P500X500X90-33N" H 6950 950 50  0001 L CNN
F 3 "https://infocenter.nordicsemi.com/index.jsp?topic=%2Fstruct_pmic%2Fstruct%2Fnpm1300.html" H 6950 850 50  0001 L CNN
F 4 "Power Management IC (PMIC) with battery charging, accurate fuel gauging and advanced system management features." H 6950 750 50  0001 L CNN "Description"
F 5 "0.9" H 6950 650 50  0001 L CNN "Height"
F 6 "Nordic Semiconductor" H 6950 550 50  0001 L CNN "Manufacturer_Name"
F 7 "NPM1300-QEAA-R" H 6950 450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "949-NPM1300-QEAA-R" H 6950 350 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nordic-Semiconductor/nPM1300-QEAA-R?qs=3pZoU%2F6IRTiFavqFmjPoaw%3D%3D" H 6950 250 50  0001 L CNN "Mouser Price/Stock"
	1    6900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1250 4800 1250
Text GLabel 4700 1250 0    39   Input ~ 0
VBUS
Wire Wire Line
	4800 1250 4800 1400
Connection ~ 4800 1250
Wire Wire Line
	4800 1250 4700 1250
$Comp
L Device:C_Small C?
U 1 1 67902272
P 4800 1500
AR Path="/677CD9BA/67902272" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902272" Ref="C?"  Part="1" 
AR Path="/679116BF/67902272" Ref="C?"  Part="1" 
F 0 "C?" H 4892 1546 50  0000 L CNN
F 1 "1uF" H 4892 1455 50  0000 L CNN
F 2 "" H 4800 1500 50  0001 C CNN
F 3 "~" H 4800 1500 50  0001 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1600 4800 1700
$Comp
L power:GND #PWR?
U 1 1 67902279
P 4800 1700
AR Path="/677CD9BA/67902279" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/67902279" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/67902279" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 1450 50  0001 C CNN
F 1 "GND" H 4805 1527 50  0000 C CNN
F 2 "" H 4800 1700 50  0001 C CNN
F 3 "" H 4800 1700 50  0001 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1450 5800 1450
Wire Wire Line
	5950 1550 5800 1550
Text GLabel 5800 1450 0    39   Input ~ 0
CC1
Text GLabel 5800 1550 0    39   Input ~ 0
CC2
Text GLabel 5150 1950 0    39   Input ~ 0
VBAT
Wire Wire Line
	5150 1950 5300 1950
Wire Wire Line
	5950 2050 5800 2050
Text GLabel 5800 2050 0    39   Input ~ 0
NTC
$Comp
L Device:C_Small C?
U 1 1 67902287
P 5300 2100
AR Path="/677CD9BA/67902287" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902287" Ref="C?"  Part="1" 
AR Path="/679116BF/67902287" Ref="C?"  Part="1" 
F 0 "C?" H 5392 2146 50  0000 L CNN
F 1 "1uF" H 5392 2055 50  0000 L CNN
F 2 "" H 5300 2100 50  0001 C CNN
F 3 "~" H 5300 2100 50  0001 C CNN
	1    5300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2000 5300 1950
Connection ~ 5300 1950
Wire Wire Line
	5300 1950 5950 1950
Wire Wire Line
	5300 2200 5300 2250
$Comp
L power:GND #PWR?
U 1 1 67902291
P 5300 2250
AR Path="/677CD9BA/67902291" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/67902291" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/67902291" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 2000 50  0001 C CNN
F 1 "GND" H 5305 2077 50  0000 C CNN
F 2 "" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
NoConn ~ 5950 2550
NoConn ~ 5950 2750
NoConn ~ 5950 2850
NoConn ~ 5950 2950
NoConn ~ 5950 3250
NoConn ~ 5950 3350
NoConn ~ 5950 3450
Wire Wire Line
	5950 3800 5100 3800
Wire Wire Line
	5100 3800 5100 4000
$Comp
L Device:R_Small R?
U 1 1 679022A0
P 5100 4100
AR Path="/677CD9BA/679022A0" Ref="R?"  Part="1" 
AR Path="/678C23F4/679022A0" Ref="R?"  Part="1" 
AR Path="/679116BF/679022A0" Ref="R?"  Part="1" 
F 0 "R?" H 5159 4146 50  0000 L CNN
F 1 "47K" H 5159 4055 50  0000 L CNN
F 2 "" H 5100 4100 50  0001 C CNN
F 3 "~" H 5100 4100 50  0001 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 679022A6
P 5400 4100
AR Path="/677CD9BA/679022A6" Ref="R?"  Part="1" 
AR Path="/678C23F4/679022A6" Ref="R?"  Part="1" 
AR Path="/679116BF/679022A6" Ref="R?"  Part="1" 
F 0 "R?" H 5459 4146 50  0000 L CNN
F 1 "300K" H 5459 4055 50  0000 L CNN
F 2 "" H 5400 4100 50  0001 C CNN
F 3 "~" H 5400 4100 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4000 5400 3950
Wire Wire Line
	5400 3950 5950 3950
NoConn ~ 5950 4350
Wire Wire Line
	5400 4200 5400 4300
Wire Wire Line
	5400 4300 5100 4300
Wire Wire Line
	5100 4300 5100 4200
Connection ~ 5100 4300
$Comp
L power:GND #PWR?
U 1 1 679022B3
P 5100 4450
AR Path="/677CD9BA/679022B3" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/679022B3" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/679022B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 4200 50  0001 C CNN
F 1 "GND" H 5105 4277 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4300 5100 4450
Wire Wire Line
	5950 4700 5800 4700
Text GLabel 5800 4700 0    39   Input ~ 0
SCL
Text GLabel 5800 4850 0    39   Input ~ 0
SDA
Wire Wire Line
	5800 4850 5950 4850
Wire Wire Line
	5950 5300 5850 5300
Text GLabel 5750 5300 0    39   Input ~ 0
1v8
$Comp
L Device:C_Small C?
U 1 1 679022C0
P 5850 5500
AR Path="/677CD9BA/679022C0" Ref="C?"  Part="1" 
AR Path="/678C23F4/679022C0" Ref="C?"  Part="1" 
AR Path="/679116BF/679022C0" Ref="C?"  Part="1" 
F 0 "C?" H 5942 5546 50  0000 L CNN
F 1 "2.2uF" H 5942 5455 50  0000 L CNN
F 2 "" H 5850 5500 50  0001 C CNN
F 3 "~" H 5850 5500 50  0001 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5400 5850 5300
Connection ~ 5850 5300
Wire Wire Line
	5850 5300 5750 5300
Wire Wire Line
	5850 5600 5850 5700
$Comp
L power:GND #PWR?
U 1 1 679022CA
P 5850 5700
AR Path="/677CD9BA/679022CA" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/679022CA" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/679022CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 5450 50  0001 C CNN
F 1 "GND" H 5855 5527 50  0000 C CNN
F 2 "" H 5850 5700 50  0001 C CNN
F 3 "" H 5850 5700 50  0001 C CNN
	1    5850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5250 8550 5250
Wire Wire Line
	8550 4950 9350 4950
Wire Wire Line
	9350 4950 9350 5250
Wire Wire Line
	9350 5250 9350 5400
Connection ~ 9350 5250
$Comp
L power:GND #PWR?
U 1 1 679022D5
P 9350 5400
AR Path="/677CD9BA/679022D5" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/679022D5" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/679022D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 5150 50  0001 C CNN
F 1 "GND" H 9355 5227 50  0000 C CNN
F 2 "" H 9350 5400 50  0001 C CNN
F 3 "" H 9350 5400 50  0001 C CNN
	1    9350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3350 9200 3350
Text GLabel 9600 3350 2    39   Input ~ 0
3v3
$Comp
L Device:L_Small L?
U 1 1 679022DD
P 8900 3750
AR Path="/677CD9BA/679022DD" Ref="L?"  Part="1" 
AR Path="/678C23F4/679022DD" Ref="L?"  Part="1" 
AR Path="/679116BF/679022DD" Ref="L?"  Part="1" 
F 0 "L?" V 9085 3750 50  0000 C CNN
F 1 "2.2uH" V 8994 3750 50  0000 C CNN
F 2 "" H 8900 3750 50  0001 C CNN
F 3 "~" H 8900 3750 50  0001 C CNN
	1    8900 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 3750 8550 3750
Wire Wire Line
	9200 3350 9200 3750
Wire Wire Line
	9200 3750 9000 3750
Wire Wire Line
	8550 2150 9200 2150
Text GLabel 9450 2150 2    39   Input ~ 0
1v8
$Comp
L Device:L_Small L?
U 1 1 679022E8
P 8900 2600
AR Path="/677CD9BA/679022E8" Ref="L?"  Part="1" 
AR Path="/678C23F4/679022E8" Ref="L?"  Part="1" 
AR Path="/679116BF/679022E8" Ref="L?"  Part="1" 
F 0 "L?" V 9085 2600 50  0000 C CNN
F 1 "2.2uH" V 8994 2600 50  0000 C CNN
F 2 "" H 8900 2600 50  0001 C CNN
F 3 "~" H 8900 2600 50  0001 C CNN
	1    8900 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 2150 9200 2600
Wire Wire Line
	9200 2600 9000 2600
Connection ~ 9200 2150
Wire Wire Line
	9200 2150 9350 2150
Wire Wire Line
	8800 2600 8550 2600
$Comp
L power:GND #PWR?
U 1 1 679022F3
P 8750 2950
AR Path="/677CD9BA/679022F3" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/679022F3" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/679022F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8750 2700 50  0001 C CNN
F 1 "GND" H 8755 2777 50  0000 C CNN
F 2 "" H 8750 2950 50  0001 C CNN
F 3 "" H 8750 2950 50  0001 C CNN
	1    8750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2950 8750 2800
Wire Wire Line
	8750 2800 8550 2800
Wire Wire Line
	8550 1450 8750 1450
Wire Wire Line
	8750 1450 8750 1650
Wire Wire Line
	8750 1650 8550 1650
Wire Wire Line
	8750 1450 9250 1450
Connection ~ 8750 1450
Text GLabel 10050 1450 2    39   Input ~ 0
VSYS
Wire Wire Line
	8550 1250 10400 1250
Text GLabel 10500 1250 2    39   Input ~ 0
VBUSOUT
$Comp
L Device:C_Small C?
U 1 1 67902303
P 10400 1500
AR Path="/677CD9BA/67902303" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902303" Ref="C?"  Part="1" 
AR Path="/679116BF/67902303" Ref="C?"  Part="1" 
F 0 "C?" H 10492 1546 50  0000 L CNN
F 1 "1uF" H 10492 1455 50  0000 L CNN
F 2 "" H 10400 1500 50  0001 C CNN
F 3 "~" H 10400 1500 50  0001 C CNN
	1    10400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1400 10400 1250
Connection ~ 10400 1250
Wire Wire Line
	10400 1250 10500 1250
$Comp
L power:GND #PWR?
U 1 1 6790230C
P 10400 1750
AR Path="/677CD9BA/6790230C" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/6790230C" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/6790230C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10400 1500 50  0001 C CNN
F 1 "GND" H 10405 1577 50  0000 C CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1750 10400 1600
$Comp
L Device:C_Small C?
U 1 1 67902313
P 9600 1650
AR Path="/677CD9BA/67902313" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902313" Ref="C?"  Part="1" 
AR Path="/679116BF/67902313" Ref="C?"  Part="1" 
F 0 "C?" H 9692 1696 50  0000 L CNN
F 1 "10uF" H 9692 1605 50  0000 L CNN
F 2 "" H 9600 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67902319
P 9250 1650
AR Path="/677CD9BA/67902319" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902319" Ref="C?"  Part="1" 
AR Path="/679116BF/67902319" Ref="C?"  Part="1" 
F 0 "C?" H 9342 1696 50  0000 L CNN
F 1 "10uF" H 9342 1605 50  0000 L CNN
F 2 "" H 9250 1650 50  0001 C CNN
F 3 "~" H 9250 1650 50  0001 C CNN
	1    9250 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6790231F
P 9950 1650
AR Path="/677CD9BA/6790231F" Ref="C?"  Part="1" 
AR Path="/678C23F4/6790231F" Ref="C?"  Part="1" 
AR Path="/679116BF/6790231F" Ref="C?"  Part="1" 
F 0 "C?" H 10042 1696 50  0000 L CNN
F 1 "10uF" H 10042 1605 50  0000 L CNN
F 2 "" H 9950 1650 50  0001 C CNN
F 3 "~" H 9950 1650 50  0001 C CNN
	1    9950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1550 9950 1450
Connection ~ 9950 1450
Wire Wire Line
	9950 1450 10050 1450
Wire Wire Line
	9250 1550 9250 1450
Connection ~ 9250 1450
Wire Wire Line
	9250 1450 9600 1450
Wire Wire Line
	9600 1550 9600 1450
Connection ~ 9600 1450
Wire Wire Line
	9600 1450 9950 1450
Wire Wire Line
	9250 1750 9250 1900
Wire Wire Line
	9250 1900 9600 1900
Wire Wire Line
	9600 1750 9600 1900
Connection ~ 9600 1900
Wire Wire Line
	9600 1900 9950 1900
$Comp
L power:GND #PWR?
U 1 1 67902333
P 9950 2000
AR Path="/677CD9BA/67902333" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/67902333" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/67902333" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9950 1750 50  0001 C CNN
F 1 "GND" H 9955 1827 50  0000 C CNN
F 2 "" H 9950 2000 50  0001 C CNN
F 3 "" H 9950 2000 50  0001 C CNN
	1    9950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1750 9950 1900
Connection ~ 9950 1900
Wire Wire Line
	9950 1900 9950 2000
Text Notes 4350 4200 0    39   ~ 0
VSET2: 150K for 3V\nVSET2: 300K for 3v3
Wire Wire Line
	8550 4400 8750 4400
Wire Wire Line
	8550 4800 8750 4800
Text GLabel 8750 4400 2    39   Input ~ 0
3v3
Text GLabel 8750 4800 2    39   Input ~ 0
VDD_LNA
Wire Wire Line
	8550 4550 9350 4550
Wire Wire Line
	9350 4550 9350 4950
Connection ~ 9350 4950
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 67902344
P 5700 2650
AR Path="/677CF518/67902344" Ref="JP?"  Part="1" 
AR Path="/677CD9BA/67902344" Ref="JP?"  Part="1" 
AR Path="/678C23F4/67902344" Ref="JP?"  Part="1" 
AR Path="/679116BF/67902344" Ref="JP?"  Part="1" 
F 0 "JP?" H 5700 2425 50  0000 C CNN
F 1 "LNA_EN" H 5700 2516 50  0000 C CNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "~" H 5700 2650 50  0001 C CNN
	1    5700 2650
	-1   0    0    1   
$EndComp
Text GLabel 5350 2650 0    39   Input ~ 0
COEX0
Wire Wire Line
	5950 2650 5850 2650
Wire Wire Line
	5550 2650 5350 2650
Connection ~ 9200 3350
$Comp
L Device:C_Small C?
U 1 1 67902356
P 9350 3650
AR Path="/677CD9BA/67902356" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902356" Ref="C?"  Part="1" 
AR Path="/679116BF/67902356" Ref="C?"  Part="1" 
F 0 "C?" H 9442 3696 50  0000 L CNN
F 1 "10uF" H 9442 3605 50  0000 L CNN
F 2 "" H 9350 3650 50  0001 C CNN
F 3 "~" H 9350 3650 50  0001 C CNN
	1    9350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3550 9350 3350
Connection ~ 9350 3350
Wire Wire Line
	9350 3350 9200 3350
$Comp
L Device:C_Small C?
U 1 1 6790235F
P 9350 2400
AR Path="/677CD9BA/6790235F" Ref="C?"  Part="1" 
AR Path="/678C23F4/6790235F" Ref="C?"  Part="1" 
AR Path="/679116BF/6790235F" Ref="C?"  Part="1" 
F 0 "C?" H 9442 2446 50  0000 L CNN
F 1 "10uF" H 9442 2355 50  0000 L CNN
F 2 "" H 9350 2400 50  0001 C CNN
F 3 "~" H 9350 2400 50  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2300 9350 2150
Connection ~ 9350 2150
Wire Wire Line
	9350 2150 9450 2150
Wire Wire Line
	9350 2800 8750 2800
Wire Wire Line
	9350 2500 9350 2800
Connection ~ 8750 2800
Wire Wire Line
	9350 3750 9350 3950
Wire Wire Line
	8550 3950 9350 3950
Wire Wire Line
	9350 3950 9350 4550
Connection ~ 9350 3950
Connection ~ 9350 4550
Wire Wire Line
	9350 3350 9600 3350
$Comp
L Common:SPV1040T U?
U 1 1 6790237E
P 2500 4600
AR Path="/677CD9BA/6790237E" Ref="U?"  Part="1" 
AR Path="/678C23F4/6790237E" Ref="U?"  Part="1" 
AR Path="/679116BF/6790237E" Ref="U?"  Part="1" 
F 0 "U?" H 2500 5270 50  0000 C CNN
F 1 "SPV1040T" H 2500 5179 50  0000 C CNN
F 2 "Common:SPV1040T" H 1800 3750 50  0001 L BNN
F 3 "" H 2500 4600 50  0001 L BNN
F 4 "STMicroelectronics" H 1800 3550 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            IC BATT CHG SOLAR 8TSSOP\\n                        \\n" H 1800 3950 50  0001 L BNN "Description"
F 6 "TSSOP-8 STMicroelectronics" H 1800 3850 50  0001 L BNN "Package"
F 7 "None" H 2500 4600 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/SPV1040T/STMicroelectronics/view-part/?ref=eda" H 1800 3950 50  0001 L BNN "Check_prices"
F 9 "IPC7351B" H 2500 4600 50  0001 L BNN "STANDARD"
F 10 "7" H 2500 4600 50  0001 L BNN "PARTREV"
F 11 "https://www.snapeda.com/parts/SPV1040T/STMicroelectronics/view-part/?ref=snap" H 1800 3950 50  0001 L BNN "SnapEDA_Link"
F 12 "SPV1040T" H 2500 4600 50  0001 L BNN "MP"
F 13 "In Stock" H 2500 4600 50  0001 L BNN "Availability"
F 14 "ST Microelectronics" H 1800 3650 50  0001 L BNN "MANUFACTURER"
	1    2500 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky_Small D?
U 1 1 67902384
P 1650 4600
AR Path="/677CD9BA/67902384" Ref="D?"  Part="1" 
AR Path="/678C23F4/67902384" Ref="D?"  Part="1" 
AR Path="/679116BF/67902384" Ref="D?"  Part="1" 
F 0 "D?" H 1650 4393 50  0000 C CNN
F 1 "SS14" H 1650 4484 50  0000 C CNN
F 2 "" V 1650 4600 50  0001 C CNN
F 3 "~" V 1650 4600 50  0001 C CNN
	1    1650 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4700 1650 5650
Wire Wire Line
	1650 5650 2100 5650
Wire Wire Line
	2100 5650 2100 5500
Wire Wire Line
	1650 4500 1650 3500
Wire Wire Line
	1650 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3700
$Comp
L Device:L_Small L?
U 1 1 67902390
P 2100 5950
AR Path="/677CD9BA/67902390" Ref="L?"  Part="1" 
AR Path="/678C23F4/67902390" Ref="L?"  Part="1" 
AR Path="/679116BF/67902390" Ref="L?"  Part="1" 
F 0 "L?" V 2285 5950 50  0000 C CNN
F 1 "10uH" V 2194 5950 50  0000 C CNN
F 2 "" H 2100 5950 50  0001 C CNN
F 3 "~" H 2100 5950 50  0001 C CNN
	1    2100 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 5850 2100 5650
Connection ~ 2100 5650
Wire Wire Line
	2100 6050 2100 6300
Wire Wire Line
	2100 6550 2200 6550
Wire Wire Line
	2100 6550 2100 6800
Connection ~ 2100 6550
Text GLabel 2100 7050 3    39   Input ~ 0
SOLAR_IN
$Comp
L power:GND #PWR?
U 1 1 6790239D
P 3150 4600
AR Path="/677CD9BA/6790239D" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/6790239D" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/6790239D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3150 4350 50  0001 C CNN
F 1 "GND" H 3155 4427 50  0000 C CNN
F 2 "" H 3150 4600 50  0001 C CNN
F 3 "" H 3150 4600 50  0001 C CNN
	1    3150 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 2400 2100 2400
Wire Wire Line
	2100 2400 2100 3500
Connection ~ 2100 3500
$Comp
L Device:C_Small C?
U 1 1 679023A6
P 2400 3350
AR Path="/677CD9BA/679023A6" Ref="C?"  Part="1" 
AR Path="/678C23F4/679023A6" Ref="C?"  Part="1" 
AR Path="/679116BF/679023A6" Ref="C?"  Part="1" 
F 0 "C?" V 2250 3350 50  0000 C CNN
F 1 "1uF" V 2550 3350 50  0000 C CNN
F 2 "" H 2400 3350 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2100 1600
$Comp
L Device:R_Small R?
U 1 1 679023AD
P 2350 1600
AR Path="/677CD9BA/679023AD" Ref="R?"  Part="1" 
AR Path="/678C23F4/679023AD" Ref="R?"  Part="1" 
AR Path="/679116BF/679023AD" Ref="R?"  Part="1" 
F 0 "R?" H 2291 1554 50  0000 R CNN
F 1 "750K" H 2291 1645 50  0000 R CNN
F 2 "" H 2350 1600 50  0001 C CNN
F 3 "~" H 2350 1600 50  0001 C CNN
	1    2350 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 679023B3
P 2900 1600
AR Path="/677CD9BA/679023B3" Ref="R?"  Part="1" 
AR Path="/678C23F4/679023B3" Ref="R?"  Part="1" 
AR Path="/679116BF/679023B3" Ref="R?"  Part="1" 
F 0 "R?" H 2841 1554 50  0000 R CNN
F 1 "250K" H 2841 1645 50  0000 R CNN
F 2 "" H 2900 1600 50  0001 C CNN
F 3 "~" H 2900 1600 50  0001 C CNN
	1    2900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1600 2100 1600
Wire Wire Line
	2100 1600 2100 950 
Connection ~ 2100 1600
$Comp
L Device:C_Small C?
U 1 1 679023BC
P 2400 6800
AR Path="/677CD9BA/679023BC" Ref="C?"  Part="1" 
AR Path="/678C23F4/679023BC" Ref="C?"  Part="1" 
AR Path="/679116BF/679023BC" Ref="C?"  Part="1" 
F 0 "C?" V 2650 6800 50  0000 C CNN
F 1 "22uF" V 2550 6800 50  0000 C CNN
F 2 "" H 2400 6800 50  0001 C CNN
F 3 "~" H 2400 6800 50  0001 C CNN
	1    2400 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6800 2100 6800
Connection ~ 2100 6800
Wire Wire Line
	2100 6800 2100 7050
Wire Wire Line
	2300 5500 2300 5900
Wire Wire Line
	2300 6300 2100 6300
Connection ~ 2100 6300
Wire Wire Line
	2100 6300 2100 6550
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 679023C9
P 2300 6050
AR Path="/677CD9BA/679023C9" Ref="JP?"  Part="1" 
AR Path="/678C23F4/679023C9" Ref="JP?"  Part="1" 
AR Path="/679116BF/679023C9" Ref="JP?"  Part="1" 
F 0 "JP?" H 2550 6000 50  0000 C CNN
F 1 "EN" H 2550 6100 50  0000 C CNN
F 2 "" H 2300 6050 50  0001 C CNN
F 3 "~" H 2300 6050 50  0001 C CNN
	1    2300 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 6200 2300 6300
Text GLabel 2100 950  1    39   Input ~ 0
VBAT
Connection ~ 2100 1950
Connection ~ 2100 2400
Wire Wire Line
	2100 2300 2100 2400
Wire Wire Line
	2100 2100 2100 1950
$Comp
L Device:R_Small R?
U 1 1 679023D5
P 2100 2200
AR Path="/677CD9BA/679023D5" Ref="R?"  Part="1" 
AR Path="/678C23F4/679023D5" Ref="R?"  Part="1" 
AR Path="/679116BF/679023D5" Ref="R?"  Part="1" 
F 0 "R?" V 1904 2200 50  0000 C CNN
F 1 "10mR" V 1995 2200 50  0000 C CNN
F 2 "" H 2100 2200 50  0001 C CNN
F 3 "~" H 2100 2200 50  0001 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1850 1750 1850
$Comp
L power:GND #PWR?
U 1 1 679023DC
P 1800 1850
AR Path="/677CD9BA/679023DC" Ref="#PWR?"  Part="1" 
AR Path="/678C23F4/679023DC" Ref="#PWR?"  Part="1" 
AR Path="/679116BF/679023DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1800 1600 50  0001 C CNN
F 1 "GND" H 1805 1677 50  0000 C CNN
F 2 "" H 1800 1850 50  0001 C CNN
F 3 "" H 1800 1850 50  0001 C CNN
	1    1800 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 679023E2
P 1550 1850
AR Path="/677CD9BA/679023E2" Ref="C?"  Part="1" 
AR Path="/678C23F4/679023E2" Ref="C?"  Part="1" 
AR Path="/679116BF/679023E2" Ref="C?"  Part="1" 
F 0 "C?" V 1400 1850 50  0000 C CNN
F 1 "22uF" V 1700 1850 50  0000 C CNN
F 2 "" H 1550 1850 50  0001 C CNN
F 3 "~" H 1550 1850 50  0001 C CNN
	1    1550 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1850 1450 1850
Wire Wire Line
	2100 2400 1400 2400
Wire Wire Line
	2100 1950 2500 1950
$Comp
L Device:R_Small R?
U 1 1 679023EB
P 2300 2950
AR Path="/677CD9BA/679023EB" Ref="R?"  Part="1" 
AR Path="/678C23F4/679023EB" Ref="R?"  Part="1" 
AR Path="/679116BF/679023EB" Ref="R?"  Part="1" 
F 0 "R?" V 2200 2950 50  0000 C CNN
F 1 "1K" V 2400 2950 50  0000 C CNN
F 2 "" H 2300 2950 50  0001 C CNN
F 3 "~" H 2300 2950 50  0001 C CNN
	1    2300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2850 2300 2400
$Comp
L Device:R_Small R?
U 1 1 679023F2
P 2500 2650
AR Path="/677CD9BA/679023F2" Ref="R?"  Part="1" 
AR Path="/678C23F4/679023F2" Ref="R?"  Part="1" 
AR Path="/679116BF/679023F2" Ref="R?"  Part="1" 
F 0 "R?" V 2600 2650 50  0000 C CNN
F 1 "1K" V 2400 2650 50  0000 C CNN
F 2 "" H 2500 2650 50  0001 C CNN
F 3 "~" H 2500 2650 50  0001 C CNN
	1    2500 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 2550 2500 1950
Wire Wire Line
	2300 3700 2300 3500
Wire Wire Line
	2500 3700 2500 3150
Wire Wire Line
	2400 3450 2400 3500
Wire Wire Line
	2400 3500 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	2300 3500 2300 3050
Wire Wire Line
	2400 3250 2400 3150
Wire Wire Line
	2400 3150 2500 3150
Connection ~ 2500 3150
Wire Wire Line
	2500 3150 2500 2750
$Comp
L Device:R_Small R?
U 1 1 67902403
P 2300 6550
AR Path="/677CD9BA/67902403" Ref="R?"  Part="1" 
AR Path="/678C23F4/67902403" Ref="R?"  Part="1" 
AR Path="/679116BF/67902403" Ref="R?"  Part="1" 
F 0 "R?" V 2200 6550 50  0000 C CNN
F 1 "1K" V 2400 6550 50  0000 C CNN
F 2 "" H 2300 6550 50  0001 C CNN
F 3 "~" H 2300 6550 50  0001 C CNN
	1    2300 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 67902409
P 2800 5750
AR Path="/677CD9BA/67902409" Ref="R?"  Part="1" 
AR Path="/678C23F4/67902409" Ref="R?"  Part="1" 
AR Path="/679116BF/67902409" Ref="R?"  Part="1" 
F 0 "R?" V 2700 5750 50  0000 C CNN
F 1 "1K" V 2900 5750 50  0000 C CNN
F 2 "" H 2800 5750 50  0001 C CNN
F 3 "~" H 2800 5750 50  0001 C CNN
	1    2800 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 6550 2500 6550
Wire Wire Line
	3150 4600 3050 4600
Wire Wire Line
	3050 4600 3050 5750
Connection ~ 3050 4600
Wire Wire Line
	3050 4600 3000 4600
Wire Wire Line
	3050 4600 3050 1600
Wire Wire Line
	3000 1600 3050 1600
Wire Wire Line
	2450 1600 2700 1600
Wire Wire Line
	2700 3700 2700 1600
Connection ~ 2700 1600
Wire Wire Line
	2700 1600 2800 1600
Wire Wire Line
	2900 5750 3050 5750
Wire Wire Line
	2700 5750 2500 5750
Wire Wire Line
	2500 6550 2500 5750
Wire Wire Line
	3050 6800 3050 5750
Wire Wire Line
	2500 6800 3050 6800
Connection ~ 3050 5750
Wire Wire Line
	2500 5750 2500 5500
Connection ~ 2500 5750
$Comp
L Device:C_Small C?
U 1 1 67902422
P 1550 1450
AR Path="/677CD9BA/67902422" Ref="C?"  Part="1" 
AR Path="/678C23F4/67902422" Ref="C?"  Part="1" 
AR Path="/679116BF/67902422" Ref="C?"  Part="1" 
F 0 "C?" V 1400 1450 50  0000 C CNN
F 1 "22uF" V 1700 1450 50  0000 C CNN
F 2 "" H 1550 1450 50  0001 C CNN
F 3 "~" H 1550 1450 50  0001 C CNN
	1    1550 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1450 1400 1450
Wire Wire Line
	1400 2400 1400 1850
Connection ~ 1400 1850
Wire Wire Line
	1400 1850 1400 1450
Wire Wire Line
	1750 1850 1750 1450
Wire Wire Line
	1750 1450 1650 1450
Connection ~ 1750 1850
Wire Wire Line
	1750 1850 1650 1850
$EndSCHEMATC
