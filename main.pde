
PImage ch,bg;
PImage[] ballons = new PImage[15];   //because they are 15 ballons
PImage[] model = new PImage[4];//because they are 4 moves
PImage[] fallenBallons = new PImage[15];

PImage arrowModel ;

Bubble bub;
Character archer;
ArrayList<Arrow> arrow ;

void setup(){
  bg = loadImage("background.jpg");
  
  size(1280,720);
  for (int i = 0; i < 15; i++) {
    ballons[i] = loadImage("redballon.png");     // Load each image into the array
    fallenBallons[i] = loadImage("redballonshot.png");
  }
for (int i = 0; i < 4; i++) {
    model[i] = loadImage(i+".png");}
 
arrowModel = loadImage("arrow.png");

  bub=new Bubble();
  archer=new Character(0);
  arrow = new ArrayList<Arrow>();
 

}

 
void draw(){
  //background(255);
  image(bg,0,0);
//  background(bg);
  bub.show();
 bub.update(); 
 
archer.show();
 archer.update(); 
 
 //for each for arrows
for(Arrow i:arrow){
  i.show();
  i.update();

}
displayScore();
 CheckCollision();

}
//remmber to add &&(currentImageIndex==3) here 
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
  
 
  void CheckCollision()
  {
    for (Arrow i:arrow) {
   if (dist(i.x, i.y, bub.x[0], bub.y)<20){    //any x for the ballons the all are equal
     for (int j=0; j < 15; j++){
      image(fallenBallons[j], bub.x[0],bub.y-15, 30,60 ); // i add 5 to 30 to put some spaces betweeen every balloon
  }
     
   }
   
  }
  
  }
  
