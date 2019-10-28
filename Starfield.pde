Particle bob;
void setup()
{
	size(300,300);
  loop();
  bob = new Particle();
}
void draw()
{
  background(0);
	bob.move();
  bob.show();
}
class Particle
{
	float myX, myY, myColor, myAngle, mySpeed;
  Particle(){
    myX = 150;
    myY = 150;
    myColor = 255;
    myAngle = 30;
    mySpeed = 30;
}
void move(){
  myX = myX + (float)Math.cos(myAngle * mySpeed);
  myY = myY + (float)Math.sin(myAngle * mySpeed);

  }
void show(){
  fill(255);
  ellipse(myX, myY, 5, 5);
  }
}
class OddballParticle //inherits from Particle
{
  
}
