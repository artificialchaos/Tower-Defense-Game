class Towers extends Object
{ 
  int cellX;
  int cellY;
  
  void drawTower()
  {
     pushMatrix();      
     fill(0,0,255);
     translate(cellX * cellSize, cellY * cellSize);
     rect(12.5,12.5,25,25);
     popMatrix();
     render();
  }
  
  Towers(int x, int y)
  {
    cellX = x;
    cellY = y;
  }
  void shoot()
  {
    //Missiles missile = new Missiles();
    Object missile = null;
    missile = new Missiles();
    Objects.add(missile);
    missile.Mpos.x = (cellX * cellSize) + 12.5;
    missile.Mpos.y = (cellY * cellSize) + 12.5;
  }
  
  boolean inRange = false;
  
  
  
  void render()
  {
    if (frameCount % 60 == 0)
    {
      for( int i = 0 ; i < Objects.size() ; i++ )
       {
         //println(dist((cellX * cellSize) + 12.5 , (cellY * cellSize) + 12.5, Objects.get(i).position.x, Objects.get(i).position.y));     
         if(dist((cellX * cellSize) + 12.5 , (cellY * cellSize) + 12.5, Objects.get(i).position.x, Objects.get(i).position.y) < 200)
         {
           inRange = true;
         }
       }
       if(inRange == true)
       {
         shoot();
         println("test");
       }
    }
  }
  void update()
  {
   
  }
  
}
