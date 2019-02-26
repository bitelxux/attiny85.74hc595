#include <SoftwareSerial.h>

#define PIN_DATA 1
#define PIN_LATCH 0
#define PIN_CLOCK 2

#define TX 4
#define RX 3

SoftwareSerial bt(RX,TX);

byte Sequence[8] = {0,1,2,3,4,5,6,7};

byte game=1;
byte chaseArray[8];
int in;
unsigned int pause=200;

byte byte1;
byte byte2;
byte command;
unsigned int value;

void hellow(){
  digitalWrite(RX, HIGH);
  delay(100);
  digitalWrite(RX, LOW);
  delay(100);
}

void error(){
  for (int i=0; i<5; i++){
    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, 255);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(50);    

    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, 0);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(50);    
  }

  // flush
  while (bt.available()){
    bt.read();
  }
}

void setup() {
  digitalWrite(PIN_CLOCK, LOW);
  digitalWrite(PIN_LATCH, LOW);
  digitalWrite(PIN_DATA, LOW);

  pinMode(PIN_CLOCK, OUTPUT);
  pinMode(PIN_LATCH, OUTPUT);
  pinMode(PIN_DATA, OUTPUT);

  bt.begin(9600);

  chaseArray[0] = 1;   //00000001
  chaseArray[1] = 2;   //00000010
  chaseArray[2] = 4;   //00000100
  chaseArray[3] = 8;   //00001000
  chaseArray[4] = 16;  //00010000
  chaseArray[5] = 32;  //00100000
  chaseArray[6] = 64;  //01000000
  chaseArray[7] = 128; //10000000  
}

void checkDataIn(){
  
  if (bt.available()<2) {
    return(0);
  }
  
  byte1 = bt.read();
  byte2 = bt.read();

  // flush the rest
  while(bt.available()){
    bt.read();
  }

  command = byte1 >> 4;
  value = (unsigned int)((byte1 & 15) << 8) | byte2;

  if (command != 15){
        bt.print("msg:");
        bt.print(byte1, BIN);    
        bt.print(", ");
        bt.print(byte2, BIN);
        bt.print(", ");
        bt.print(command, BIN);
        bt.print(", ");
        bt.println(value, DEC);

  }

  switch(command){
    case 15:
        break;
    case 1:
        game = value;
        break;
    case 2:
        pause = value;
        break;
    default:
        error();
        game = 1;
  }   

  return(1);

}


void game1(){
  for (int i= 0; i<8; i++) {
    checkDataIn();
    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, chaseArray[Sequence[i]]);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(pause);
  }  
}

void game2(){
  for (int i=7; i>=0; i--) {
    checkDataIn();
    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, chaseArray[Sequence[i]]);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(pause);
  }  
}

void game3(){
  
  for (int i=0; i<8; i++) {
    checkDataIn();
    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, chaseArray[Sequence[i]]);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(pause);
  }
  
  for (int i=6; i>0; i--) {
    checkDataIn();
    digitalWrite(PIN_LATCH, LOW);
    shiftOut(PIN_DATA, PIN_CLOCK, LSBFIRST, chaseArray[Sequence[i]]);
    digitalWrite(PIN_LATCH, HIGH) ;
    delay(pause);
  }  

}

void loop() {

  switch(game){
    case 1:
      game1();
      break;
    case 2:
      game2();
      break;
    case 3:
      game3();
      break;      
  }

}
