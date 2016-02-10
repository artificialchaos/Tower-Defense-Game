class Towers extends Object
{ 
  int cellX;
  int cellY;
  
  void drawTower()
  {
    if(towerChoice == 1)
    {  
      pushMatrix();
      fill(0,0,255);
      translate(cellX * cellSize, cellY * cellSize);
      rect(12.5,12.5,25,25);
      popMatrix();
    }
    if(towerChoice == 2)
    {  
      pushMatrix();
      fill(255,0,0);
      translate(cellX * cellSize, cellY * cellSize);
      rect(12.5,12.5,25,25);
      popMatrix();
    }
    if(towerChoice == 3)
    {  
      pushMatrix();
      fill(0,255,0);
      translate(cellX * cellSize, cellY * cellSize);
      rect(12.5,12.5,25,25);
      popMatrix();
    }
    //println(px , py);
    
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
  void render()
  {
    if(dist((cellX * cellSize) + 12.5 , (cellY * cellSize) + 12.5, creeps.position.x, creeps.position.y) < 200)
    {
      println("test");
      shoot();
    }
  }
  void update()
  {
   
  }
  
  
}
