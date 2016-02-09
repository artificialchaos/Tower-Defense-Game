class Towers extends Object
{
 
  Towers()
  {
   
  }
  
  void update()
  {
    if( fixed == true )
    {
    towerPosition  = new PVector(mouseX,mouseY);
    }
  }

  
  void render()
  {
    pushMatrix();
    if(fixed == false)
    {
      translate(mouseX, mouseY);
    }
    if(fixed == true)
    {
      translate(towerPosition.x,towerPosition.y);
    }
    rect(-25,-25,50,50);
    popMatrix();
  }
}
