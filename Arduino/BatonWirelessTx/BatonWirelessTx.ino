#include <Wire.h>
#include <LSM303.h>

#define BAUD_RATE 9600
#define SYNC 0x28
#define PITCH_PACKET 0
#define ROLL_PACKET 1
#define SLIDE_PACKET 2
#define FSR_PACKET 3
#define CHECKSUM_PACKET 4
#define SLIDE_PIN 0
#define FSR_PIN 1

LSM303 accelerometer;
int packet[5] = {0,0,0,0,0};

void setup() {
  Serial.begin(BAUD_RATE);
  Wire.begin();
  accelerometer.init();
  accelerometer.enableDefault();
}

void loop() {
  getAccelValues();
  getSlideValue();
  getFSRValue();
  txPacket();
}

void getAccelValues(){
  accelerometer.readAcc();
  packet[PITCH_PACKET] = (int) accelerometer.getPitch();
  packet[ROLL_PACKET] = (int) accelerometer.getRoll();
}

void getSlideValue(){
  packet[SLIDE_PACKET]= analogRead(SLIDE_PIN);
}

void getFSRValue(){
  packet[FSR_PACKET]= analogRead(FSR_PIN);
}

void txPacket(){
  packet[CHECKSUM_PACKET] = packet[PITCH_PACKET]+packet[ROLL_PACKET]+packet[SLIDE_PACKET]+packet[FSR_PACKET];
  
  Serial.write(SYNC);
  for( int i = 0 ; i < 5; i ++){
    Serial.print(packet[i]);
    Serial.print(" ");
  }
  Serial.println();
}

