class Towers extends Object
{ 
  int cellX;
  int cellY;
  
  void drawTower()
  {
     pushMatrix();      
     fill(200);
     translate(cellX * cellSize, cellY * cellSize);
     ellipse(25,25,35,35);
     fill(200,0,0);
     ellipse(25,25,10,10);
     popMatrix();
     render();
     update();
  }
  
  Towers(int x, int y)
  {
    cellX = x;
    cellY = y;
  }
  void shoot()
  {
    Object missile = null;
    missile = new Missiles();
    Objects.add(missile);
    missile.Mpos.x = (cellX * cellSize) + 25;
    missile.Mpos.y = (cellY * cellSize) + 25;
  }
  
  boolean inRange = false;
  
  
  
  void render()
  {
    if (frameCount % 60 == 0)
    {
      for( int i = 0 ; i < Objects.size() ; i++ )
       {  
         if(dist((cellX * cellSize) + 25 , (cellY * cellSize) + 25, Objects.get(i).position.x, Objects.get(i).position.y) < 250)
         {
           inRange = true;
           Objects.get(i).theta = tan(sq(((cellX * cellSize) + 25) - Objects.get(i).position.x)/sq(((cellY * cellSize) + 25) - Objects.get(i).position.y));
         }
       }
       
       if(inRange == true)
       {
         shoot();
       }
    }
  }
  void update()
  {
       //println(sqrt(sq(((cellX * cellSize) + 25) - Objects.get(i).position.x) + sq(((cellY * cellSize) + 25) - Objects.get(i).position.y)));
       //theta = atan(sq(((cellX * cellSize) + 25) - Objects.get(i).position.x)/sq(((cellY * cellSize) + 25) - Objects.get(i).position.y));
       //println(theta);
  }
  
}
