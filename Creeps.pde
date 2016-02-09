class Creeps extends Object
{
  int speed = 10;
  int spawn;
  Creeps()
  {
   
  }
  
  void update()
  {
    if(position.x < 260 && position.y == 165)
    {
      position.x ++;
    }
    if(position.x == 260 && position.y < 370)
    {
      position.y ++;
    }
    if(position.x < 460 && position.y == 370)
    {
      position.x ++;
    }
    if(position.x == 460 && position.y > 70)
    {
      position.y --;
    }
    if(position.x < 660 && position.y == 70)
    {
      position.x ++;
    }
    if(position.x == 660 && position.y < 265)
    {
      position.y ++;
    }
    if(position.x < 830 && position.x > 600 && position.y == 265)
    {
      position.x ++;
    }
    spawn++;
    
  }
  
  void render()
  {
    pushMatrix();
    translate(position.x, position.y);
    fill(0,127,0);
    rect(0,0,30,20);
    fill(127,0,0);
    rect(10,7,10,6);
    popMatrix();
  }
}
