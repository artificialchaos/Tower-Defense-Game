class Towers extends Object
{
 
  Towers()
  {
    
  }
  
  void update()
  {
   
  }
  
  
  void render()
  {
    
    if(fixed == false)
    {
      pushMatrix();
      translate(mouseX, mouseY);
      rect(-25,-25,50,50);
      popMatrix();
    }
    if(fixed == true)
    {
      pushMatrix();
      translate(mouseX, mouseY);
      rect(-25,-25,50,50);
      popMatrix();
    }
    
  }
  
}
