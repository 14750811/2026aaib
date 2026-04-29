//week10-1 打地鼠-2
//File-Preference 字型設大一點，接續上週 week09-2 好玩的程式設計
//修改自 week09-1 好玩的程式設計 (打地鼠) Ctrl-N新視窗
void setup(){ //設定1次
  size(300,300); //視窗大小 300x300
}
int [][]a={{0,0,0},{0,0,0},{0,0,0}}; //Java陣列
void mousePressed(){ //week10-1新加的程式：mouse按下去
  int i=mouseY/100,j=mouseX/100; //左i對應Y座標，右手j對應X座標
  if(a[i][j]>0){ //打到地鼠了
    a[i][j]=-60; //由正變負，負的代表死掉的地鼠(要讓地鼠流血死掉)
  }
}
void draw(){ //每秒畫60次
  background(#FFFFF2); //背景畫淡黃色
  if(frameCount%60==0){ //每過60 frame(1秒)生1之地鼠
    int i=int(random(3)),j=int(random(3));
    a[i][j]=60; //亂數決定i跟j的值，再把a[i][j]生60
  }
  for(int i=0;i<3;i++){ //左手i
    for(int j=0;j<3;j++){ //右手j
      int x=50+j*100,y=50+i*100;
      if(a[i][j]<0){ //負的，代表死掉的地鼠
        fill(0); //黑色的血 fill(255,0,0); //紅色的血，留在原地
        a[i][j]++;
      }else if(a[i][j]>0){
        fill(#C61616,a[i][j]*4); //地鼠色，半透明
        a[i][j]--; //數值會變小，慢慢就透明不見了
      }else fill(#FFFFF2);
      ellipse(x,y,90,90); //地鼠的洞
    }
  }
}
