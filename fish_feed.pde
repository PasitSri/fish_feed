Fish f;
void setup(){
  size(500, 500);
  background(255);
  f = new Fish(width/2, height/2);
}

void draw(){
  background(255);
  f.draw();
}

void mouseDragged(){
  f.drageBlock(); 
}

void mousePressed(){
  f.presses();
}
