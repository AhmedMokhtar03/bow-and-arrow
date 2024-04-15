
PImage ch,bg,redballon,fallenRedballon,arrowModel;
PImage[] model = new PImage[4];//because they are 4 moves


//Ballons ballon;
Character archer;
ArrayList<Arrow> arrow ;
ArrayList<Ballons> ballon;


void setup(){
   size(1280,720);
  bg = loadImage("background.jpg");
  redballon = loadImage("redballon.png");
  fallenRedballon = loadImage("redballonshot.png");
  arrowModel = loadImage("arrow.png");
 
for (int i = 0; i < 4; i++) {
    model[i] = loadImage(i+".png");
  }
 
   
  archer=new Character(0);
  arrow = new ArrayList<Arrow>();
  ballon = new ArrayList<Ballons>();
  for(int i=0;i<15;i++){
   ballon.add(new Ballons(750+35*i,680,30,60));
 }
 

}

 
void draw(){
  image(bg,0,0);

archer.show();
 archer.update(); 
 
   //for each for ballons
 for(Ballons i:ballon){
 i.show();
 i.update();
 }
 //for each for arrows
for(Arrow i:arrow){
  i.show();
  i.update();
}

CheckCollision();
displayScore();
}

//show arrow only if press left click and the quiver is only 20 arrow
void mousePressed(){
  if (mousePressed && (mouseButton == LEFT)&&(arrow.size()<20)&&(archer.currentImageIndex==3)){
  arrow.add(new Arrow(50,mouseY+22));
  }
  }
 

 void displayScore()
  {
  fill(0); // Set the fill color to black
  textSize(15); // Set the text size to 32 pixels
  textAlign(CENTER, CENTER); // Align the text to the center of the canvas
  text("Remaining arrows: "+(20-arrow.size()), 80, 10); // Display the string at the center of the canvas
  }
  
   void CheckCollision() {
  for (Arrow i:arrow) { 
    
    for (Ballons j:ballon) { 
      if (dist(i.x, i.y, j.x, j.y) < 20) { 
       // image(fallenBallon, j.x, j.y -15, 30, 60); 
      FallenBallons fallenballon=new FallenBallons(j.x,j.y,30,60);
      while(fallenballon.y<720){
      fallenballon.show();
      fallenballon.update();
fallenballon.y += 60;
}
        ballon.remove(j); 
         
       break;
      }
    }
  }
}
  
  
  
 /*
//grbhaa be for each   elmafroud ta3mel error
 void CheckCollision() {
  for (int i = 0; i < arrow.size(); i++) { 
    Arrow currentArrow = arrow.get(i);
    for (int j = 0; j < ballon.size(); j++) { 
      Ballons currentBallon = ballon.get(j);
      if (dist(currentArrow.x, currentArrow.y, currentBallon.x, currentBallon.y) < 20) { 
        image(fallenBallon, currentBallon.x, currentBallon.y - 15, 30, 60); 
        ballon.remove(j); 
        break;
      }
    }
  }
}
*/
