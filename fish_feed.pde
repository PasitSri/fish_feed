Fish f;
Feed feed;
void setup(){
  size(500, 500);
  background(255);
  f = new Fish(width/2, height/2);
  feed = new Feed(random(450), random(450));
}


void draw(){
  background(255);
  f.draw();
  feed.draw();
  fill(0);
  textSize(30);
  text(String.valueOf(f.count), 200, 1);
}


void mouseDragged(){
  f.drageBlock(); 
  f.eatFeed(feed);
}


void mousePressed(){
  f.presses();
}
