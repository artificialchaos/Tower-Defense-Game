void setup()
{
  size(800, 600);
  creeps = new Creeps();
}

Creeps creeps;

ArrayList<Object> Objects = new ArrayList<Object>();

void draw()
{
  background(0);
  fill(255);
  rect(0,150,250,50);
  rect(250,150,50,250);
  rect(300,350,150,50);
  rect(450,50,50,350);
  rect(500,50,150,50);
  rect(650,50,50,250);
  rect(700,250,100,50);
  fill(0,0,127);
  rect(0,450,800,150);
  
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
  
  //creeps.update();
  //creeps.render();
}
