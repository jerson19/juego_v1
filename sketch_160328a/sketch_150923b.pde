import processing.serial.*;
import cc.arduino.*;

Arduino arduino1;

void setup(){
  size(400,200);
  println(Arduino.list());
  
  arduino1 = new Arduino(this,Arduino.list()[0],57600);
  arduino1.pinMode(10,Arduino.OUTPUT);
  arduino1.digitalWrite(10,Arduino.LOW);
}
void draw(){
arduino1.digitalWrite(10,Arduino.LOW);
noLoop();
}
