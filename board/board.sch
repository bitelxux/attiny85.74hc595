EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HC-06 Example"
Date "2019-01-26"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L board-rescue:ATTINY85-P IC1
U 1 1 5C4C6669
P 5000 2750
F 0 "IC1" H 3850 3150 50  0000 C CNN
F 1 "ATTINY85-P" H 6000 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 2750 50  0000 C CIN
F 3 "" H 5000 2750 50  0000 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
Text GLabel 6800 2000 1    39   Input ~ 0
VCC
Text GLabel 8650 3100 3    39   Input ~ 0
GND
Text GLabel 3900 4350 2    39   Input ~ 0
GND
Text GLabel 3900 4250 2    39   Input ~ 0
VCC
Text GLabel 3900 4450 2    39   Input ~ 0
BTTX
Text GLabel 3900 4550 2    39   Input ~ 0
BTRX
Text GLabel 2750 2800 0    39   Input ~ 0
RX
Text GLabel 2750 2900 0    39   Input ~ 0
TX
$Comp
L board-rescue:CONN_01X05 P1
U 1 1 5C4C6D38
P 2600 4450
F 0 "P1" H 2600 4750 50  0000 C CNN
F 1 "CONN_01X05" V 2700 4450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x05" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0000 C CNN
	1    2600 4450
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:CONN_01X02 P2
U 1 1 5C4C88C2
P 9100 2700
F 0 "P2" H 9100 2850 50  0000 C CNN
F 1 "CONN_01X02" V 9200 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9100 2700 50  0001 C CNN
F 3 "" H 9100 2700 50  0000 C CNN
	1    9100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4250 2800 4250
Wire Wire Line
	3900 4350 2800 4350
Wire Notes Line
	2400 4850 4300 4850
Wire Notes Line
	4300 4850 4300 4000
Wire Notes Line
	4300 4000 2400 4000
Text Notes 3800 4800 0    39   ~ 0
Bluetooth HC06
Wire Notes Line
	2400 4000 2400 4850
$Comp
L board-rescue:Led_Small led1
U 1 1 5C676D44
P 8600 5100
F 0 "led1" H 8650 5150 50  0000 L CNN
F 1 "Rd" H 8450 5150 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 5100 50  0001 C CNN
F 3 "" V 8600 5100 50  0000 C CNN
	1    8600 5100
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R3
U 1 1 5C676D4A
P 9550 5100
F 0 "R3" V 9550 5150 50  0000 C CNN
F 1 "R" V 9550 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 5100 50  0001 C CNN
F 3 "" H 9550 5100 50  0000 C CNN
	1    9550 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 2500 8300 2500
Wire Wire Line
	8300 2500 8300 2650
Wire Wire Line
	8300 3000 8300 2750
Wire Wire Line
	8300 2750 8650 2750
Wire Wire Line
	8650 3100 8650 2750
Connection ~ 8650 2750
Wire Wire Line
	8650 2750 8900 2750
$Comp
L board-rescue:R R4
U 1 1 5C67BF4E
P 2150 3000
F 0 "R4" V 2230 3000 50  0000 C CNN
F 1 "10K" V 2150 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2080 3000 50  0001 C CNN
F 3 "" H 2150 3000 50  0000 C CNN
	1    2150 3000
	0    -1   -1   0   
$EndComp
Text GLabel 1550 3000 0    39   Input ~ 0
VCC
Wire Wire Line
	1550 3000 2000 3000
$Comp
L Switch:SW_Push SW1
U 1 1 5C67CB22
P 7350 2500
F 0 "SW1" H 7350 2785 50  0000 C CNN
F 1 "SW_Push" H 7350 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 7350 2700 50  0001 C CNN
F 3 "~" H 7350 2700 50  0001 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2900 2900 2900
Wire Wire Line
	8300 2650 8900 2650
Wire Wire Line
	7150 2500 6800 2500
Wire Wire Line
	6350 3000 8300 3000
Wire Wire Line
	6800 2000 6800 2500
Connection ~ 6800 2500
Wire Wire Line
	6800 2500 6350 2500
Wire Wire Line
	2300 3000 3650 3000
$Comp
L 74xx:74HC595 U1
U 1 1 5C69BA27
P 7800 4800
F 0 "U1" H 7800 5578 50  0000 C CNN
F 1 "74HC595" H 7800 5487 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7800 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7800 4800 50  0001 C CNN
	1    7800 4800
	1    0    0    -1  
$EndComp
Text GLabel 2750 2700 0    39   Input ~ 0
Clock
Text GLabel 2750 2600 0    39   Input ~ 0
Data
Text GLabel 2750 2500 0    39   Input ~ 0
Latch
Wire Wire Line
	2750 2500 3650 2500
Wire Wire Line
	2750 2600 3650 2600
Wire Wire Line
	2750 2700 3650 2700
Text GLabel 6900 4400 0    39   Input ~ 0
Data
Wire Wire Line
	6900 4400 7400 4400
Text GLabel 6450 4900 0    39   Input ~ 0
Latch
Text GLabel 6900 4600 0    39   Input ~ 0
Clock
Wire Wire Line
	6900 4600 7400 4600
Text GLabel 7800 3750 1    39   Input ~ 0
VCC
Text GLabel 7800 5850 3    39   Input ~ 0
GND
Wire Wire Line
	7800 5850 7800 5650
$Comp
L board-rescue:Led_Small led2
U 1 1 5C6A79AA
P 8600 5000
F 0 "led2" H 8650 5050 50  0000 L CNN
F 1 "Rd" H 8450 5050 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 5000 50  0001 C CNN
F 3 "" V 8600 5000 50  0000 C CNN
	1    8600 5000
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R9
U 1 1 5C6A79B1
P 9550 5000
F 0 "R9" V 9550 5050 50  0000 C CNN
F 1 "R" V 9550 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 5000 50  0001 C CNN
F 3 "" H 9550 5000 50  0000 C CNN
	1    9550 5000
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led3
U 1 1 5C6A81B5
P 8600 4900
F 0 "led3" H 8650 4950 50  0000 L CNN
F 1 "Rd" H 8450 4950 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4900 50  0001 C CNN
F 3 "" V 8600 4900 50  0000 C CNN
	1    8600 4900
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R8
U 1 1 5C6A81BB
P 9550 4900
F 0 "R8" V 9550 4950 50  0000 C CNN
F 1 "R" V 9550 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4900 50  0001 C CNN
F 3 "" H 9550 4900 50  0000 C CNN
	1    9550 4900
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led4
U 1 1 5C6A81C3
P 8600 4800
F 0 "led4" H 8650 4850 50  0000 L CNN
F 1 "Rd" H 8450 4850 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4800 50  0001 C CNN
F 3 "" V 8600 4800 50  0000 C CNN
	1    8600 4800
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R7
U 1 1 5C6A81C9
P 9550 4800
F 0 "R7" V 9550 4850 50  0000 C CNN
F 1 "R" V 9550 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4800 50  0001 C CNN
F 3 "" H 9550 4800 50  0000 C CNN
	1    9550 4800
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led5
U 1 1 5C6A8BDF
P 8600 4700
F 0 "led5" H 8650 4750 50  0000 L CNN
F 1 "Rd" H 8450 4750 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4700 50  0001 C CNN
F 3 "" V 8600 4700 50  0000 C CNN
	1    8600 4700
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R6
U 1 1 5C6A8BE5
P 9550 4700
F 0 "R6" V 9550 4750 50  0000 C CNN
F 1 "R" V 9550 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4700 50  0001 C CNN
F 3 "" H 9550 4700 50  0000 C CNN
	1    9550 4700
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led6
U 1 1 5C6A8BED
P 8600 4600
F 0 "led6" H 8650 4650 50  0000 L CNN
F 1 "Rd" H 8450 4650 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4600 50  0001 C CNN
F 3 "led2" V 8600 4600 50  0000 C CNN
	1    8600 4600
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R5
U 1 1 5C6A8BF3
P 9550 4600
F 0 "R5" V 9550 4650 50  0000 C CNN
F 1 "R" V 9550 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4600 50  0001 C CNN
F 3 "" H 9550 4600 50  0000 C CNN
	1    9550 4600
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led7
U 1 1 5C6A8BFB
P 8600 4500
F 0 "led7" H 8650 4550 50  0000 L CNN
F 1 "Rd" H 8450 4550 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4500 50  0001 C CNN
F 3 "" V 8600 4500 50  0000 C CNN
	1    8600 4500
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R R2
U 1 1 5C6A8C01
P 9550 4500
F 0 "R2" V 9550 4550 50  0000 C CNN
F 1 "R" V 9550 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4500 50  0001 C CNN
F 3 "" H 9550 4500 50  0000 C CNN
	1    9550 4500
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:Led_Small led8
U 1 1 5C6A8C09
P 8600 4400
F 0 "led8" H 8650 4450 50  0000 L CNN
F 1 "Rd" H 8450 4450 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 8600 4400 50  0001 C CNN
F 3 "" V 8600 4400 50  0000 C CNN
	1    8600 4400
	-1   0    0    1   
$EndComp
Connection ~ 7800 5650
Wire Wire Line
	7800 5650 7800 5500
Wire Wire Line
	7400 5000 7150 5000
Wire Wire Line
	7150 5000 7150 5650
Wire Wire Line
	7150 5650 7800 5650
Wire Wire Line
	6450 4900 6700 4900
Wire Wire Line
	6250 4700 6250 3900
Wire Wire Line
	6250 3900 7800 3900
Wire Wire Line
	6250 4700 7400 4700
Wire Wire Line
	7800 3750 7800 3900
Connection ~ 7800 3900
Wire Wire Line
	7800 3900 7800 4200
$Comp
L board-rescue:R LED1
U 1 1 5C6F19DC
P 2900 3250
F 0 "LED1" V 2980 3250 50  0000 C CNN
F 1 "470" V 2900 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2830 3250 50  0001 C CNN
F 3 "" H 2900 3250 50  0000 C CNN
	1    2900 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5C6F1BF4
P 2500 3400
F 0 "D1" H 2500 3635 50  0000 C CNN
F 1 "LED_Small" H 2500 3544 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" V 2500 3400 50  0001 C CNN
F 3 "~" V 2500 3400 50  0001 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2900 2900 3100
Connection ~ 2900 2900
Wire Wire Line
	2900 3400 2600 3400
Text GLabel 2100 3400 0    39   Input ~ 0
GND
Wire Wire Line
	2100 3400 2400 3400
Wire Wire Line
	9700 5100 9850 5100
Wire Wire Line
	9700 5000 9850 5000
Wire Wire Line
	9700 4900 9850 4900
Wire Wire Line
	9700 4800 9850 4800
Wire Wire Line
	9700 4700 9850 4700
Wire Wire Line
	9700 4600 9850 4600
Wire Wire Line
	9700 4500 9850 4500
Wire Wire Line
	8700 4500 9400 4500
Wire Wire Line
	8700 4600 9400 4600
Wire Wire Line
	8700 4700 9400 4700
Wire Wire Line
	8700 4800 9400 4800
Wire Wire Line
	8700 4900 9400 4900
Wire Wire Line
	8700 5000 9400 5000
Wire Wire Line
	8700 5100 9400 5100
Wire Wire Line
	8200 4400 8500 4400
Wire Wire Line
	8200 4500 8500 4500
Wire Wire Line
	8200 4600 8500 4600
Wire Wire Line
	8200 4700 8500 4700
Wire Wire Line
	8200 4800 8500 4800
Wire Wire Line
	8200 4900 8500 4900
Wire Wire Line
	8200 5000 8500 5000
Wire Wire Line
	8200 5100 8500 5100
Wire Wire Line
	9850 5650 9850 5100
Wire Wire Line
	7800 5650 9850 5650
Wire Wire Line
	9850 5100 9850 5000
Connection ~ 9850 5100
Wire Wire Line
	9850 5000 9850 4900
Connection ~ 9850 5000
Wire Wire Line
	9850 4900 9850 4800
Connection ~ 9850 4900
Wire Wire Line
	9850 4800 9850 4700
Connection ~ 9850 4800
Wire Wire Line
	9850 4700 9850 4600
Connection ~ 9850 4700
Wire Wire Line
	9850 4500 9850 4600
Connection ~ 9850 4600
Wire Wire Line
	9850 4500 9850 4400
Connection ~ 9850 4500
Wire Wire Line
	2750 2800 3100 2800
Wire Wire Line
	2800 4450 3100 4450
Wire Wire Line
	2900 2900 3300 2900
Wire Wire Line
	3100 4450 3100 2800
Connection ~ 3100 4450
Wire Wire Line
	3100 4450 3900 4450
Connection ~ 3100 2800
Wire Wire Line
	3100 2800 3650 2800
Wire Wire Line
	3300 2900 3300 4550
Wire Wire Line
	2800 4550 3300 4550
Connection ~ 3300 2900
Wire Wire Line
	3300 2900 3650 2900
Connection ~ 3300 4550
Wire Wire Line
	3300 4550 3900 4550
$Comp
L board-rescue:R R10
U 1 1 5C729F3A
P 9550 4400
F 0 "R10" V 9550 4450 50  0000 C CNN
F 1 "R" V 9550 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 4400 50  0001 C CNN
F 3 "" H 9550 4400 50  0000 C CNN
	1    9550 4400
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:R 47K1
U 1 1 5C729F91
P 6700 5300
F 0 "47K1" V 6700 5350 50  0000 C CNN
F 1 "47K" V 6700 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6630 5300 50  0001 C CNN
F 3 "" H 6700 5300 50  0000 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5150 6700 4900
Connection ~ 6700 4900
Wire Wire Line
	6700 4900 7400 4900
Wire Wire Line
	6700 5450 6700 5650
Wire Wire Line
	6700 5650 7150 5650
Connection ~ 7150 5650
Wire Wire Line
	9700 4400 9850 4400
Wire Wire Line
	9400 4400 8700 4400
Text Notes 3900 5550 0    50   ~ 0
PullDown resistor. It prevents leds from flashing when mc is booting.
$EndSCHEMATC
