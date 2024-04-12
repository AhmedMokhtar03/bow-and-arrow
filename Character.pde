
 class Character{
   
public int currentImageIndex ;

 // Constructor
  Character( int imgNumber) {
  currentImageIndex=imgNumber;
  }
void show()
  {
  image(model[currentImageIndex], 0, mouseY, 80, 100);
  }
  
  void update() {
            if (mousePressed && (mouseButton == RIGHT) &&(arrow.size()<20)) {
        currentImageIndex=3;
       
        }
    if (mousePressed && (mouseButton == LEFT) &&(arrow.size()<20)) 
    {
      currentImageIndex=0;
    }


}
}
