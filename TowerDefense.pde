void setup()
{
  size(800, 600);
  creeps = new Creeps();
  for(int cellx =0 ; cellx < Map.length ; cellx++)
  {
    for(int celly =0 ; celly < Map[0].length ; celly++)
    {
      Map[cellx][celly] = new Cell( cellx, celly );
    }
  }
}

Creeps creeps;

int cellSize = 50;
Cell[][] Map = new Cell[16][9];
Cell currentCell = null;
ArrayList<Towers> TowersInGame = new ArrayList<Towers>();
ArrayList<Object> Objects = new ArrayList<Object>();
ArrayList<Object> Tower = new ArrayList<Object>();



void draw()
{
  background(0);
  fill(255);
  
  //draw the track
  rect(0,150,250,50);
  rect(250,150,50,250);
  rect(300,350,150,50);
  rect(450,50,50,350);
  rect(500,50,150,50);
  rect(650,50,50,250);
  rect(700,250,100,50);
  fill(0,0,127);
  rect(0,450,800,150);
  
  //draw the menu
  stroke(255);
  fill(127);
  rect(50,475,100,100);
  rect(175,475,100,100);
  rect(300,475,100,100);
  
  
  /*for(int i = Tower.size() - 1 ; i >= 0   ;i --)
  {
    Object T1 = Tower.get(i);
    T1.update();
    T1.render();
  }*/
  
  for(int i = 0 ; i < TowersInGame.size() ; i++)
  {
    TowersInGame.get(i).drawTower();
  }
  
  for(int i = Objects.size() - 1 ; i >= 0   ;i --)
  {
    Object obj = Objects.get(i);
    obj.update();
    obj.render();
  }
  
  if (frameCount % 90 == 0)
  {
    Object enemy = null;
    enemy = new Creeps();
    Objects.add(enemy);
  }
  cellCheck();
}

void cellCheck()
{
  int x = (int)(mouseX / cellSize);
  int y = (int)(mouseY / cellSize);
  
  if(x < Map.length && y < Map[0].length)
  {
    currentCell = Map[x][y];
    currentCell.cellOutline();
  }
}
void mousePressed()
{
  if(currentCell != null)
  {
    if(currentCell.emptyCell())
    {
      currentCell.buildTower(new Towers(currentCell.cellx, currentCell.celly));
    }
  } 
}
