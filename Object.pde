abstract class Object
{
  float speed;
  PVector position = new PVector(10,165);
  PVector Mpos = new PVector(0,0);
  PVector dir = new PVector(1,1);
  PVector creepDir = new PVector(0,0);
  PVector forward = new PVector(1,0);
  PVector up = new PVector(0,-1);
  PVector down = new PVector(0,1);
  float theta = 7f;
  int health = 2;
  Object()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}
