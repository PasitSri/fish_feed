class Fish{
  boolean locked = false;
  float xOffset=0, yOffset=0;
  float x;
  float y;
  float width = 50;
  float height = 50;
  boolean addState = false;
  int count = 0;


  Fish(float x, float y){
    this.x = x;
    this.y = y;
  }
  

  void setPosiion(float x, float y){
    this.x = x;
    this.y = y;
  }


  void draw(){
    fill(#38E071);
    rect(x, y, width, height,30);
  }


  void drageBlock(){
    println(locked);
    if(locked){
      x=mouseX-xOffset;
      y=mouseY-yOffset;
    }
  }


  void presses(){
    addState = true;
    if(mouseX>x && mouseX<x+width && mouseY>y && mouseY<y+height){
      locked = true;
    }else{
      locked = false;
    }
    xOffset = mouseX-x;
    yOffset = mouseY-y;
  }


  void eatFeed(Feed feed){
    if(feed.x>x && feed.x<x+width && feed.y>y && feed.y<y+height){
      feed.randomPosition();
      count+=1;
    }
  }


}
