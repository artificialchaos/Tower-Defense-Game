void setup()
{
  size(800, 600);
  for(int cellx =0 ; cellx < Map.length ; cellx++)
  {
    for(int celly =0 ; celly < Map[0].length ; celly++)
    {
      Map[cellx][celly] = new Cell( cellx, celly );//creating the grid of cells
    }
  }
}

int cellSize = 50;
int spawnRate = 100;
Cell[][] Map = new Cell[16][9];
Cell currentCell = null;
ArrayList<Towers> TowersInGame = new ArrayList<Towers>();
ArrayList<Object> Objects = new ArrayList<Object>();
ArrayList<Object> Tower = new ArrayList<Object>();
public int towerChoice = 1;
public int lives = 20;
public int money = 200;
public int score = 0;

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
  if (score % 2000 == 0)
  {
    spawnRate = spawnRate + 5;
  }
  if (frameCount % 90 == 0)//spawns a creep every 90 frames
  {
    Object enemy = null;
    enemy = new Creeps();
    Objects.add(enemy);
  }
  stroke(0);
  fill(255);
  textSize(20);
  text("Lives: " + lives,120,520);//displays the players score
  text("Money: $" + money,320,520);
  text("Score: " + score,570,520);
  cellCheck();
  checkCollisions();
  //Towers.render();
  
  if (lives < 1)//This is the gameover screen
  {
    fill(0);
    rect(0,0,800,600);
    textSize(100);
    fill(255);
    text("Game Over",135, 200);
    textSize(75);
    text("Final Score: " + score,160, 400);
  }
}

void cellCheck()//checks what cell the user is hovering over
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
void mousePressed()//if a user clicks on a cell and it is available a new tower is built there
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

void setPath()//sets the path to prevent towers being build on it
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

void checkCollisions()
{
 for(int i = Objects.size() - 1 ; i >= 0   ;i --)
 {
    Object obj = Objects.get(i);
    if (obj instanceof Creeps)
    {
      for(int j = Objects.size() - 1 ; j >= 0   ;j --)
      {
        Object other = Objects.get(j);
        if (other instanceof Missiles) 
        {
          
          PVector temp = new PVector(0,0);
          temp.x = other.Mpos.x + 15;
          temp.y = other.Mpos.y + 10;
          if (obj.position.dist(temp) < 25)//checks if the distance between the two objects is below a certain distance
          {
            Objects.remove(other);
            obj.health--;
          }
        }
      }
    }
 } 
}
