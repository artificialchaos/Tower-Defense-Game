void setup()
{
  size(800, 600);
  for(int cellx =0 ; cellx < Map.length ; cellx++)
  {
    for(int celly =0 ; celly < Map[0].length ; celly++)
    {
      Map[cellx][celly] = new Cell( cellx, celly );
    }
  }
}

int cellSize = 50;
Cell[][] Map = new Cell[16][9];
Cell currentCell = null;
ArrayList<Towers> TowersInGame = new ArrayList<Towers>();
ArrayList<Object> Objects = new ArrayList<Object>();
ArrayList<Object> Tower = new ArrayList<Object>();
//ArrayList<Object> Missile = new ArrayList<Object>();
public int towerChoice = 1;
public int lives = 20;
public int money = 200;

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
  //draw the menu
  noStroke();
  fill(0,127,127);
  rect(0,450,800,150);
  
  
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
  stroke(0);
  fill(255);
  textSize(25);
  text("Lives: " + lives,150,520);
  text("Money: $" + money,500,520);
  cellCheck();
  //Towers.render();
  
  if (lives < 1)
  {
    fill(0);
    rect(0,0,800,600);
    textSize(100);
    fill(255);
    text("Game Over",135, 200);
  }
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
  setPath();
}
void mousePressed()
{
  if(currentCell != null)
  {
    if(currentCell.emptyCell())
    {
      if(money >= 20)
      {
        money = money - 20;
        currentCell.buildTower(new Towers(currentCell.cellx, currentCell.celly));
      }
    }
  } 
}

void setPath()
{
  Map[0][3].onPath = true;
  Map[1][3].onPath = true;
  Map[2][3].onPath = true;
  Map[3][3].onPath = true;
  Map[4][3].onPath = true;
  Map[5][3].onPath = true;
  Map[5][3].onPath = true;
  Map[5][4].onPath = true;
  Map[5][5].onPath = true;
  Map[5][6].onPath = true;
  Map[5][7].onPath = true;
  Map[6][7].onPath = true;
  Map[7][7].onPath = true;
  Map[8][7].onPath = true;
  Map[9][7].onPath = true;
  Map[9][6].onPath = true;
  Map[9][5].onPath = true;
  Map[9][4].onPath = true;
  Map[9][3].onPath = true;
  Map[9][2].onPath = true;
  Map[9][1].onPath = true;
  Map[10][1].onPath = true;
  Map[11][1].onPath = true;
  Map[12][1].onPath = true;
  Map[13][1].onPath = true;
  Map[13][2].onPath = true;
  Map[13][3].onPath = true;
  Map[13][4].onPath = true;
  Map[13][5].onPath = true;
  Map[14][5].onPath = true;
  Map[15][5].onPath = true;
}
