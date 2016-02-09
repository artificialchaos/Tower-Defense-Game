abstract class Object
{
  PVector position = new PVector(10,165);
  int dx;
  int dy;
  Object()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}
