class Feed{
  float x;
  float y;
  float width = 10;
  float height = 10;


  Feed(float x, float y){
    this.x = x;
    this.y = y;
  }


  void draw(){
    fill(#ef536d);
    rect(x, y, width, height,30);
  }


  void randomPosition(){
    this.x = random(450);
    this.y = random(450);
  }


}
