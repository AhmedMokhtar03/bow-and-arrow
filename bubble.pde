class Bubble{
  int  y;
  int[] x=new int[15]   ;
  
  Bubble(){
  y=680;
  for ( int i=0; i < 15; i++){
  x[i]=(750+35*i);
  }
  }
  
void update(){
y-=3;
if (y<-60)
y=680;
}
  
  void show(){
  for ( int i=0; i < 15; i++){
      image(ballons[i], x[i], y, 30,60 ); // i add 5 to 30 to put some spaces betweeen every balloon
  }
  
  }
}                                                  
