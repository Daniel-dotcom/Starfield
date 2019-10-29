Particle [] bob;
void setup()
{
	size(300,300);
  loop();
  bob = new Particle[1000];
  for(int j = 0; j < bob.length; j++){
    bob[j] = new Particle();
  }
}
void draw()
{
  background(0);
	for(int i = 0; i < bob.length; i++){
  bob[i].move();
  bob[i].show();
  }
}
class Particle
{
	double myX, myY, myColor, myAngle, mySpeed;
  Particle(){
    myX = 150;
    myY = 150;
    myColor = 255;
    myAngle = (Math.random()*360);
    mySpeed = (Math.random()*100);
}
void move(){
  myX = myX + Math.cos(myAngle * mySpeed);
  myY = myY + Math.sin(myAngle * mySpeed);
  }
void show(){
  fill(255);
  ellipse((float)myX, (float)myY, 5, 5);
  }
}
class OddballParticle //inherits from Particle
{
  
}
