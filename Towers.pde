class Towers 
{ 
  int cellX;
  int cellY;
  
  void drawTower()
  {
    pushMatrix();
    translate(cellX * cellSize, cellY * cellSize);
    rect(12.5,12.5,25,25);
    popMatrix();
  }

  Towers(int x, int y)
  {
    cellX = x;
    cellY = y;
  }
}
