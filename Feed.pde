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
    fill(#38E071);
    rect(x, y, width, height,30);
  }

}
