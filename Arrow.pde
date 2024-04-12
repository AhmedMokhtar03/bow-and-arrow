class Arrow{
  int x,y,speed;
  boolean shouldRemove=false;
  
Arrow(int startingX ,int startingY) {
  x=startingX;
  y=startingY;
  speed=10;
  }
  
  void show(){
    image(arrowModel, x, y, 100, 50);
    
  }
  
  void update(){
  x+=speed;
  }
  
  
  
}
