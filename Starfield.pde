Particle [] bob;
void setup()
{
	size(300,300);
  loop();
  bob = new Particle[100];
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
    myX = myY = 150;
    myColor = 255;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2;
}
void move(){
  myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
  }
void show(){
  fill(255);
  rect((float)myX, (float)myY, 5, 20);

  
  }
}
class OddballParticle //inherits from Particle
{
  
}
