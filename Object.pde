abstract class Object
{
  float speed;
  PVector position = new PVector(10,165);
  PVector Mpos;
  PVector dir;
  Object()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}
