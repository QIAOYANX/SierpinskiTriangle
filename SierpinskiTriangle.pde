int length = 300;
public void setup(){
  size(800,800);
  background(250);
}
public void draw(){
  Sierpinski(5, height, length);
}
public void mouseClicked(){
  if(length == 300){
    length = 500;
  }else if(length == 500){
    length = 700;
  }
} 
public void Sierpinski(int x, int y, int len){
  fill(20,160,160);
  noStroke();
  if(len <20){
    triangle(x+80,y+80,(x+len)+80,y+80, (x+len/2)+80,(y-len)+80);
  }else{
    Sierpinski(x,y,len/2);
    Sierpinski(x+len/2,y,len/2);
    Sierpinski(x+len/4,y-len/2,len/2);
  }
}
