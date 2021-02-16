import processing.serial.*;
Serial myPort;
int hue;
PImage image; 
String val;

public void settings() {
  //fullScreen();
  size(1300,1000);

}
public void setup() {
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  image = loadImage("hi4.png"); 
  background(0);  
  hue = 255; 
  colorMode(HSB,360,100,100,100);
} 

public void draw() {
  cursor(image);
  if ( myPort.available() > 0) {  
    val = myPort.readStringUntil('\n'); 
  }
  val = trim(val);
  //System.out.println(val);
  
  int size = 30; 
  
  if (mousePressed) { 
    sp(mouseX,mouseY,size);
  }

  if (val.equals("B1:1")) {
    hue = hue - 1;
    hue = constrain(hue,0,360);
  }
  else if (val.equals("B2:1")) {
    hue = hue + 1;
    hue = constrain(hue, 0, 360);
  }
  else if(val.equals("B3:1")){
    background(0);
  }

  fill(hue,100,100,100);
  rect(0, height - 25 , 25, 25);

}


public void sp(int x,int y,int size){
  push();
  noStroke();
  fill(hue,100,100,20);
  translate(x,y);
  for (int i = 0 ; i < 150 ; i++){
    float radius = random(size); 
    float angle = random(TWO_PI);
    float xpos = radius*cos(angle);
    float ypos = radius*sin(angle);
    ellipse(xpos, ypos, map(radius,0,size,size/5,0), map(radius,0,size,size/5,0));
  }
  pop();
}
