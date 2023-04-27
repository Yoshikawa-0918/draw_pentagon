class Pentagon{
  //中心の座標と半径
  float x,y,radius;
  
  //頂点座標の配列
  float[] px = new float[5];
  float[] py = new float[5];
  
  
    void drawPentagon(float x, float y, float radius){
      //頂点の座標を計算する
      for(int i = 0; i < 5; i++){
      float positionX = sin(radians(i * 72 + 180)) * radius + x;
      float positionY = cos(radians(i * 72 + 180)) * radius + y;
      
      //計算した座標を配列に格納していく
      px[i] = positionX;
      py[i] = positionY;
      
      //前回計算した座標から今回計算した座標へ線を引く
      if(i >= 1){
        line(px[i-1],py[i-1],px[i],py[i]);
        //最後の頂点の座標から最初の頂点の座標へ線を引く
        if(i == 4){
          line(px[i],py[i],px[0],py[0]);
        }
      }
    }
  }
}

//インスタンス化
Pentagon p = new Pentagon();

void setup(){
  size(600,600);
  //x座標300、y座標300を中心点として半径100の正五角形を描く
  p.drawPentagon(300, 300, 100);
}
