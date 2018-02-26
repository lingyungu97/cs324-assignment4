import processing.sound.*;
SoundFile file;
String audioName = "bird.mp3";
String path;
Bird b1;
Wings b2;
Bird b3;
Wings b4;
PVector p;
void setup(){
  size(900,900);
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  b1 = new Bird(50,50,1,2,color(234,223,135),color(250,145,8));
  b2 = new Wings(50,50,1,2,color(255,206,70),1);
  b3 = new Bird(200,150,1.5,1,color(6,64,10),color(234,223,135));
  b4 = new Wings(200,150,1.5,1,color(34,139,41),1.5);
}

void draw(){
  background(255);
  noStroke();
  fill(227,250,255);
  rect(0,0,900,300);
  //frameRate(5);
  stroke(0);
  b2.display();
  b2.move();
  b2.flap();
  b1.display();
  b1.move();
  b4.display();
  b4.move();
  b4.flap();
  b3.display();
  b3.move();
}