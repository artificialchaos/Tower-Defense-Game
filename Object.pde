abstract class Object
{
  float speed;
  PVector position = new PVector(10,165);
  PVector Mpos = new PVector(0,0);
  PVector dir = new PVector(1,1);
  Object()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}
