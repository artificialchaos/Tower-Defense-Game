class Creeps extends Object
{
  
  Creeps()
  {
   
  }

  void update()
  {
    if(position.x < 260 && position.y == 165)//the bounds of the course before a turn is made
    {
     
      creepDir = forward;//the direction is changed at each corner
    }
    if(position.x == 260 && position.y < 370)
    {
      
      creepDir = down;
    }
    if(position.x < 460 && position.y == 370)
    {
     
      creepDir = forward;
    }
    if(position.x == 460 && position.y > 70)
    {
 
      creepDir = up;
    }
    if(position.x < 660 && position.y == 70)
    {

      creepDir = forward;
    }
    if(position.x == 660 && position.y < 265)
    {

      creepDir = down;
    }
    if(position.x < 830 && position.x > 600 && position.y == 265)
    {

      creepDir = forward;
    }
    if(position.x > 800 )
    {
      lives--;
      Objects.remove(this);
    }
    if(health < 1)
    {
      Objects.remove(this);
      score = score + 100;
      money = money + 1;
    }
    position.add(creepDir);
  }
  
  void render()//creeps are drawn
  {
    pushMatrix();
    translate(position.x, position.y);
    fill(0,127,0);
    rect(0,0,30,20);
    fill(127,0,0);
    rect(10,7,10,6);
    fill(50);
    rect(18,9,15,2);
    popMatrix();
  }
}
