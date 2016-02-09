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
ArrayList<Object> Objects = new ArrayList<Object>();
ArrayList<Object> Tower = new ArrayList<Object>();
public boolean towerSelected = false;
public boolean fixed = false;
public int index = 0;
public int[] arrayx = new int[64];
public int[] arrayy = new int[64];
public PVector towerPosition = new PVector(arrayx[index],arrayy[index]);


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
  
  
  for(int i = Tower.size() - 1 ; i >= 0   ;i --)
  {
    Object T1 = Tower.get(i);
    T1.update();
    T1.render();
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
  //println(towerSelected, fixed);
    println(Map.length, Map[0].length);
  //creeps.update();
  //creeps.render();
  cellCheck();
}

void cellCheck()
{
  int x = (int)(mouseX / cellSize);
  int y = (int)(mouseY / cellSize);
  
  if(x < Map.length && y < Map[0].length)
  {
    Map[x][y].cellOutline();
  }
}

void mouseClicked() 
{
 
  
    if(towerSelected == true)
    {
        
        fixed = true;
        towerSelected = false;
    }  
 
    if(mouseX > 50 && mouseX < 150 && towerSelected == false)
    {
       if(mouseY < 575 && mouseY > 475)
       {
          Object tower1 = null;
          tower1 = new Towers();
          Objects.add(tower1);
          towerSelected = true;
          fixed = false;
       }
    }
   
}



    
