class Cell 
{
  int cellx;
  int celly;
  
  Cell( int x, int y )
  {
    cellx = x;
    celly = y;
  }
 
  void cellOutline()
  {
    stroke(255,0,0);
    noFill();
    rect( cellx * cellSize, celly * cellSize,  cellSize,  cellSize);
  }
  
  
}
