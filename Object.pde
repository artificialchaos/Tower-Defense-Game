abstract class Object
{
  PVector position = new PVector(10,165);

  Object()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}
