class Ballons{
  int x, y;
  int w,h;

 Ballons (int x ,int y,int w,int h){

  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
 
  }
  
void update(){
y-=3;
if (y<-60)
y=680;
}
  
  void show(){
 // for ( int i=0; i < 15; i++){
     // image(ballons[i], x[i], y, 30,60 ); // i add 5 to 30 to put some spaces betweeen every balloon
image (redballon,x,y,w,h);


//}
  
  }
}                                                  
