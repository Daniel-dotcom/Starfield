Particle [] bob;
void setup()
{
	size(500,500);
  loop();
  bob = new Particle[1000];
  for(int j = 0; j < bob.length; j++){
    bob[j] = new Particle();
    bob[0] = new OddballParticle(); 
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
    myX = myY = 250;
    myColor = color(0,(int)(Math.random()*100)+100, (int)(Math.random()*150)+100);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2;
}
void move(){
  myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
  if((myX > 500 || myY > 500) || (myY < 0 || myX < 0)){
    myX=myY=250;
  }
} 
void show(){
  fill((int)myColor);
  ellipse((float)myX, (float)myY, 5, 5);
  }
}
class OddballParticle extends Particle{
  double nX, nY;
  OddballParticle(){
    nX = 250;
    nY = 250; 
  }
  void move(){
    nX = nX + Math.random()*10-5;
    nY = nY + Math.random()*10-5; 
    if((nX > 500 || nY > 500) || (nY < 0 || nX < 0)){
      nX=nY=250;
    }
  }
  void show(){
    ellipse((float)nX,(float)nY, 100, 100);
  }
}
