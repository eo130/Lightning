int startx = 50;
int starty = 0;
int endx = 50;
int endy = 0; 
void setup()
{
  size(300,300);
  strokeWeight((int)(3));
  background(#8A8FA5);
}
void draw()
{ 
    endx = startx + ((int)(Math.random()*10)-5);
    endy = starty + ((int)(Math.random()*10));
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    line(startx,starty,endx,endy);
    startx = endx;
    starty = endy;
    if(endy >= 300){
      background(#8A8FA5);
      endy = 0;
      fill(0);
      text("AHH!!",155,220);
    }
  //cloud
  stroke(#D8D8D8);
   fill(#D8D8D8);
   ellipse(50,20,75,40);
   ellipse(70,30,60,50);
   ellipse(100,18,160,35);
   ellipse(90,40,100,65);
  //house
  noStroke();
  fill(#5D4F33);
  rect(65,220,80,60);
  fill(#A01212);
  triangle(60,220,105,190,150,220);
  //ground
  noStroke();
  fill(#ACCB81);
  rect(0,280,300,20); //idea: make a lightning rod so that when it hits lightning rod smt happens??
  int m = 0;
  while(m<300){
    triangle(m,280,(m+10),250,(m+20),280);
    m = m + 10;
  }
 //}
}
void mousePressed()
{
  startx = 50;
  starty = 0;
  endx = 50;
  endy = 0; 
}
