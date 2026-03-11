void setup(){
  size(800,100);
}
void draw(){
  background(#FFD152);
  for(int x=0;x<800;x+=100){
    if(x<mouseX && mouseX <x+100)fill(0,255,0);
    else fill(#FFD152);
    rect(x,0,100,100)
  }
}
