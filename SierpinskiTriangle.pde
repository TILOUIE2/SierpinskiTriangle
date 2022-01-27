int length = 20;
int bColor = 255;
public void setup()
{
  size(500, 500);
  stroke(bColor);
  background(bColor);
}
public void draw()
{
  stroke(bColor);
  background(bColor);
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
  if(length < 500){
  length = length + 20;
  }
  else length = 20;
}

public void keyPressed(){
 if(key == '1'){
   bColor = 255;
 }
 if(key == '2'){
    bColor = 0;
 }
}
