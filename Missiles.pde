class Missiles extends Object
{
  Missiles()
  {
    speed = 1.0f;
  }
  
  void update()
  {
     if (Mpos.x < 0 || Mpos.y < 0 || Mpos.x > width || Mpos.y > height - 150)
     {
      Objects.remove(this);
     }
     dir.mult(speed);
     Mpos.add(dir);
  }
  
  void render()
  {
    pushMatrix();
    fill(255,0,0);
    translate(Mpos.x, Mpos.y);
    ellipse(0, 0, 10, 10);
    popMatrix();  
  }
  
}
