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
  }
  
  Towers(int x, int y)
  {
    cellX = x;
    cellY = y;
  }
  void shoot()
  {
    Missiles missile = new Missiles();
    Mpos.x = (cellX * cellSize) + 12.5;
    Mpos.y = (cellY * cellSize) + 12.5;
  }
  
  /*boolean inRange()
  {
    if(dist((cellX * cellSize) + 12.5 , (cellY * cellSize) + 12.5, .position.x, .position.y) < 200)
    {
      return true;
    }
    else
    {
      return false;
    }
  }*/
  
  void render()
  {
    /*if(inRange == true)
    {
      println("test");
      shoot();
    }*/
  }
  void update()
  {
   
  }
  
  
}
