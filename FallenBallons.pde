class FallenBallons{
  int x, y;
  int w,h;

 FallenBallons (int x ,int y,int w,int h){

  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
 
  }
  
void update(){
  
//y+=1;
if (y>720)
y=800;
}
  
  void show(){
 // for ( int i=0; i < 15; i++){
     // image(ballons[i], x[i], y, 30,60 ); // i add 5 to 30 to put some spaces betweeen every balloon
image (fallenRedballon,x,y,w,h);


//}
  
  }
}                                  
