int background = 0;
int length = 20;
public void setup()
{
  size(500, 500);
}
public void draw()
{
  if(background%2 == 0){
    stroke(0);
    background(0); 
  }
  else{
  stroke(255);
  background(255);
  }
  sierpinski(0, 0, length);
  
}
public void mouseDragged()
{
 
}
public void sierpinski(int x, int y, int len) 
{ 
  if(len <= 20){
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  triangle(x, y, x+(len/2), y+len, x+len, y);
  }
  else{
   sierpinski(x, y, len/2);
   sierpinski(x + len/2, y, len/2);
   sierpinski(x + len/4, y + len/2, len/2);
  }
  

}

public void mousePressed(){
  background++;
  if(length < 500){
  length = length + 20;
  }
  else length = 20;
}
