Particle [] x = new Particle[1500];
void setup()
{
  size(500, 500);
  for (int i = 0; i < x.length; i++)
    x[i] = new Particle();
  x[0] = new OddballParticle();
}
void draw()
{
  background(0, 51, 102);
  for (int i = 0; i < x.length; i++) {
    x[i].show();
    x[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  Particle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 40, 40);
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = 1;
    myColor = color(0, 0, 0);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 200, 200);
  }
  void move() {
    myX = myX + Math.cos(myAngle) / mySpeed;
    myY = myY + Math.sin(myAngle) / mySpeed;
  }
}

