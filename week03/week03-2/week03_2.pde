//week03-1好玩的程式設計 Processing 結合for()+if()
//Ctrl+N開新的程式視窗
void setup(){
  size(800,100);
}
void draw(){
  background(#FFD152);//用Tool-色彩選擇器挑色彩
  for(int x=0;x<800;x+=100){//x:0,100,200,...
    if(x<mouseX && mouseX <x+100)fill(0,255,0);
    else fill(#FFD152);//依照mouseX的位置決定色彩
    rect(x,0,100,100);
  }
}
