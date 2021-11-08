class Fish{
  float x;
  float y;
  float width = 50;
  float height = 50;

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
    if(locked){
      x=mouseX-xOffset;
      y=mouseY-yOffset;
      return true;
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

}
