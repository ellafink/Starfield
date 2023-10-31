Particle[] stars = new Particle[400];
void setup(){
  size(800,800);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Particle();
    stars[0] = new OddBall();
  }
}
void draw(){
 background(0); 
 for(int i = 0; i<stars.length; i++){
    stars[i].show();
    stars[i].move();
  }
}
class Particle {
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle(){
    myX = myY = 400;
    mySpeed = (Math.random()*5)+1;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*250)+80,(int)(Math.random()*5)+50,(int)(Math.random()*5)+40);
  }
  void show(){
    stroke(0.01);
    fill(0);
    ellipse((float)myX,(float)myY,20,20);
    fill(myColor);
    ellipse((float)myX,(float)myY+15,30,35);
    fill(0);
    ellipse((float)myX+5,(float)myY+5,5,5);
    ellipse((float)myX-5,(float)myY+10,5,5);
    ellipse((float)myX+2,(float)myY+20,5,5);
    ellipse((float)myX-8,(float)myY+25,5,5);
  }
  void move(){
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}
class OddBall extends Particle {
  OddBall(){
    myX = myY = 400;
    myColor = color((int)(Math.random()*255)+150,(int)(Math.random()*36)+150,(int)(Math.random()*234)+150);
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY-20,25,25);
    ellipse((float)myX-20,(float)myY-5,25,25);
    ellipse((float)myX+20,(float)myY-5,25,25);
    ellipse((float)myX+12,(float)myY+15,25,25);
    ellipse((float)myX-12,(float)myY+15,25,25);
    fill(#FFE624);
    ellipse((float)myX,(float)myY,35,35);
  }
  void move(){
    myX += (Math.random()*2)-1;
    myY += (Math.random()*2)-1;
  }
}
