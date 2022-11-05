Particle [] stars;

void setup()
{
  size (400,400);
  stars = new Particle[400];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Particle();
  }
  for (int i = 0; i < 5; i++){
    stars[i] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
    stars[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(237, 228, 50);
  }
  void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse ((float)myX, (float)myY,(int)(Math.random()*20)+1,(int)(Math.random()*20)+1);
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX = Math.random()*50+250;
    myY = Math.random()*50+250;
  }
  void move(){
    myX = myX + (Math.random()*10)-5;
    myY = myY + (Math.random()*10)-5;
  }
  void show(){
   //make dollars
   fill(66,198,87);
   stroke(0);
   rect ((float)myX, (float)myY, 50,20);
   fill(0);
   text("$", (float)myX + 23, (float)myY + 13);
  }
}
