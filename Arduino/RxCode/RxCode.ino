#define BAUD_RATE 9600
#define MAX_BAUD_RATE 115200
#define SYNC 0x28
#define LPITCH_INDEX 0
#define LROLL_INDEX 1
#define LSLIDE_INDEX 2
#define LFSR_INDEX 3
#define RPITCH_INDEX 4
#define RROLL_INDEX 5
#define RSLIDE_INDEX 6
#define RFSR_INDEX 7

int packet[8] = {0, 0, 0, 0, 0, 0, 0, 0};
bool leftDataIn = false;
bool rightDataIn = false;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(MAX_BAUD_RATE);
  Serial1.begin(BAUD_RATE);
  Serial2.begin(BAUD_RATE);
}

void loop() {
  // put your main code here, to run repeatedly:
   if (Serial1.available()&&Serial2.available()) {

    if(leftDataIn && rightDataIn){
      writeDataToMax();
    }

    if(leftDataIn)
    {
      readSerialRightBaton();
    }
    else{
      readSerialLeftBaton();
    }
    
  }

}

void readSerialLeftBaton()
{
  if(SYNC == Serial1.read()){
    
      String pitch = Serial1.readStringUntil(' ');
      Serial1.read();
      String roll = Serial1.readStringUntil(' ');
      Serial1.read();
      String slide = Serial1.readStringUntil(' ');
      Serial1.read();
      String fsr = Serial1.readStringUntil(' ');
      Serial1.read();
      String checksum = Serial1.readStringUntil(' ');
      Serial1.read();
      Serial1.read();
  
      packet[LPITCH_INDEX] = pitch.toInt();
      packet[LROLL_INDEX] = roll.toInt();
      packet[LSLIDE_INDEX] = slide.toInt();
      packet[LFSR_INDEX] = fsr.toInt();
      int checksumInt = checksum.toInt();

      
      if ( (packet[LPITCH_INDEX] + packet[LROLL_INDEX] + packet[LSLIDE_INDEX] + packet[LFSR_INDEX]) == checksumInt && packet[LPITCH_INDEX]!=0 && packet[LROLL_INDEX]!=0 && checksumInt!=0){
        leftDataIn = true;
  }
  
  }
}

void readSerialRightBaton()
{
  if(SYNC == Serial2.read()){
    
      String pitch = Serial2.readStringUntil(' ');
      Serial2.read();
      String roll = Serial2.readStringUntil(' ');
      Serial2.read();
      String slide = Serial2.readStringUntil(' ');
      Serial2.read();
      String fsr = Serial2.readStringUntil(' ');
      Serial2.read();
      String checksum = Serial2.readStringUntil(' ');
      Serial2.read();
      Serial2.read();
  
      packet[RPITCH_INDEX] = pitch.toInt();
      packet[RROLL_INDEX] = roll.toInt();
      packet[RSLIDE_INDEX] = slide.toInt();
      packet[RFSR_INDEX] = fsr.toInt();
      int checksumInt = checksum.toInt();

      
      if ( (packet[RPITCH_INDEX] + packet[RROLL_INDEX] + packet[RSLIDE_INDEX] + packet[RFSR_INDEX]) == checksumInt && packet[RPITCH_INDEX]!=0 && packet[RROLL_INDEX]!=0 && checksumInt!=0){
        rightDataIn = true;
  }
  
  }
}

void writeDataToMax()
{
 for( int i = 0 ; i < 8; i ++){
    Serial.print(packet[i]);
    Serial.print(" ");
  } 
  Serial.println();

  leftDataIn = false;
  rightDataIn = false;
  delay(50);
}

