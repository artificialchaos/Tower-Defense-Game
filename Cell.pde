class Cell 
{
  int cellx;
  int celly;
 
  
  Cell( int x, int y )
  {
    cellx = x;
    celly = y;
  }

   boolean onPath = false;
   Towers onCell = null;
   boolean emptyCell()
   {
     if(onCell == null && onPath == false)
     {
       return true;
     }
     else
     {
       return false;
     }
   }
 
  void cellOutline()//outlines the cell the mouse is hovering over
  {
    stroke(0,127,0);
    noFill();
    rect( cellx * cellSize, celly * cellSize,  cellSize,  cellSize);
  }
  void buildTower(Towers x)
  {
    if(emptyCell())
    {
      onCell = x;
      TowersInGame.add(onCell);
    }
  
  }
  
}
