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
EELAYER 25 0
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
L ATTINY85-P IC1
U 1 1 5C4C6669
P 5600 3200
F 0 "IC1" H 4450 3600 50  0000 C CNN
F 1 "ATTINY85-P" H 6600 2800 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 6600 3200 50  0000 C CIN
F 3 "" H 5600 3200 50  0000 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5C4C66C4
P 7700 2700
F 0 "#PWR01" H 7700 2550 50  0001 C CNN
F 1 "VCC" H 7700 2850 50  0000 C CNN
F 2 "" H 7700 2700 50  0000 C CNN
F 3 "" H 7700 2700 50  0000 C CNN
	1    7700 2700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR02
U 1 1 5C4C66DC
P 7700 3600
F 0 "#PWR02" H 7700 3350 50  0001 C CNN
F 1 "Earth" H 7700 3450 50  0001 C CNN
F 2 "" H 7700 3600 50  0000 C CNN
F 3 "" H 7700 3600 50  0000 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
Text GLabel 8000 2750 2    39   Input ~ 0
VCC
Text GLabel 8000 3550 2    39   Input ~ 0
GND
Text GLabel 4500 4800 2    39   Input ~ 0
GND
Text GLabel 4500 4700 2    39   Input ~ 0
VCC
Text GLabel 4500 4900 2    39   Input ~ 0
BTTX
Text GLabel 4500 5000 2    39   Input ~ 0
BTRX
Text GLabel 3350 3250 0    39   Input ~ 0
RX
Text GLabel 3350 3350 0    39   Input ~ 0
TX
$Comp
L SW_PUSH SW1
U 1 1 5C4C6C4A
P 5550 2300
F 0 "SW1" H 5700 2410 50  0000 C CNN
F 1 "SW_PUSH" H 5550 2220 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 5550 2300 50  0001 C CNN
F 3 "" H 5550 2300 50  0000 C CNN
	1    5550 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P1
U 1 1 5C4C6D38
P 3200 4900
F 0 "P1" H 3200 5200 50  0000 C CNN
F 1 "CONN_01X05" V 3300 4900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x05" H 3200 4900 50  0001 C CNN
F 3 "" H 3200 4900 50  0000 C CNN
	1    3200 4900
	-1   0    0    1   
$EndComp
Text GLabel 4500 5100 2    39   Input ~ 0
STATUS
Text Notes 6050 2200 0    39   ~ 0
Digital Inputs require pull-up resistor\neither internal mc or external
Text GLabel 6200 4300 0    39   Input ~ 0
STATUS
Text GLabel 3500 3150 0    39   Input ~ 0
STATUS_IN
$Comp
L R 10K1
U 1 1 5C4C7196
P 6600 4550
F 0 "10K1" V 6680 4550 50  0000 C CNN
F 1 "R" V 6600 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 6530 4550 50  0001 C CNN
F 3 "" H 6600 4550 50  0000 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
Text GLabel 6600 5000 3    39   Input ~ 0
GND
Text GLabel 7000 4300 2    39   Input ~ 0
STATUS_IN
$Comp
L Led_Small D1
U 1 1 5C4C737F
P 2850 3000
F 0 "D1" H 2800 3125 50  0000 L CNN
F 1 "Led_Small" H 2675 2900 50  0000 L CNN
F 2 "LEDs:LED-3MM" V 2850 3000 50  0001 C CNN
F 3 "" V 2850 3000 50  0000 C CNN
	1    2850 3000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5C4C756D
P 3600 3000
F 0 "R1" V 3680 3000 50  0000 C CNN
F 1 "R" V 3600 3000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 3530 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0000 C CNN
	1    3600 3000
	0    1    1    0   
$EndComp
Text GLabel 2250 3000 0    39   Input ~ 0
GND
$Comp
L CONN_01X02 P2
U 1 1 5C4C88C2
P 8750 3100
F 0 "P2" H 8750 3250 50  0000 C CNN
F 1 "CONN_01X02" V 8850 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8750 3100 50  0001 C CNN
F 3 "" H 8750 3100 50  0000 C CNN
	1    8750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2950 8550 2950
Wire Wire Line
	7700 2700 7700 2950
Wire Wire Line
	6950 3450 7700 3450
Wire Wire Line
	7700 3150 7700 3600
Wire Wire Line
	8000 2750 7700 2750
Connection ~ 7700 2750
Wire Wire Line
	8000 3550 7700 3550
Connection ~ 7700 3550
Wire Wire Line
	4500 4700 3400 4700
Wire Wire Line
	4500 4800 3400 4800
Wire Wire Line
	3400 4900 4500 4900
Wire Wire Line
	3400 5000 4500 5000
Wire Wire Line
	3350 3250 4250 3250
Wire Wire Line
	3350 3350 4250 3350
Wire Wire Line
	5850 2300 7250 2300
Wire Wire Line
	3400 5100 4500 5100
Wire Wire Line
	4100 5000 4100 3350
Connection ~ 4100 3350
Connection ~ 4100 5000
Wire Wire Line
	4000 4900 4000 3250
Connection ~ 4000 3250
Connection ~ 4000 4900
Wire Wire Line
	7250 2300 7250 3450
Connection ~ 7250 3450
Wire Wire Line
	3500 3150 4250 3150
Wire Wire Line
	6200 4300 7000 4300
Wire Wire Line
	6600 4400 6600 4300
Connection ~ 6600 4300
Wire Wire Line
	6600 5000 6600 4700
Wire Wire Line
	4250 2950 4100 2950
Wire Wire Line
	4100 2950 4100 2300
Wire Wire Line
	4100 2300 5250 2300
Wire Wire Line
	4250 3050 3750 3050
Wire Wire Line
	3750 3050 3750 3000
Wire Wire Line
	3450 3000 2950 3000
Wire Wire Line
	2250 3000 2750 3000
Wire Wire Line
	8550 2950 8550 3050
Connection ~ 7700 2950
Wire Wire Line
	8550 3150 7700 3150
Connection ~ 7700 3450
Wire Notes Line
	5800 4050 7500 4050
Wire Notes Line
	7500 4050 7500 5300
Wire Notes Line
	7500 5300 5800 5300
Wire Notes Line
	5800 5300 5800 4050
Text Notes 6850 5250 0    39   ~ 0
HC-06 Status input
Wire Notes Line
	3000 4550 3000 5300
Wire Notes Line
	3000 5300 4900 5300
Wire Notes Line
	4900 5300 4900 4450
Wire Notes Line
	4900 4450 3000 4450
Wire Notes Line
	3000 4450 3000 4600
Text Notes 4400 5250 0    39   ~ 0
Bluetooth HC06
Text Notes 8950 850  0    39   ~ 0
Switch button wakes up Attiny85 and sends a message over Bluetooth.\nThen it goes back to sleep.
$EndSCHEMATC
