class Controller
{
  Controller()
  {
  }
  
  void zoomIn()
  {
    if (zoom < 10000)
    {
      zoom *= 1.002;
    }
  }
  void zoomOut()
  {
    if (zoom > 1)
    {
      zoom *= 0.998;
    }
  }
  void faster()
  {
    if (speeddiv < 10000)
    {
      speeddiv *= 1.002;
    }
  }
  void slower()
  {
    if (speeddiv > 0)
    {
      speeddiv *= 0.998;
    }
  }
  void left()
  {
      zoomx += 5;
  }
  void right()
  {
      zoomx -= 5;
  }
  void up()
  {
      zoomy += 5;
  }
  void down()
  {
      zoomy -= 5;
  }
  void ctrl()
  {
    if (keyPressed)
    {
      if (key == CODED) 
      {
        if (keyCode == UP) 
        {
          zoomIn();
        }
        else if (keyCode == DOWN) 
        {
          zoomOut();
        }
        if (keyCode == LEFT) 
        {
          slower();
        }
        else if (keyCode == RIGHT) 
        {
          faster();
        }
      }
      switch (key)
      {
        case 'w':
        
          up();
          break;
        
        case 's':
        
          down();
          break;
        
        case 'a':
        
          left();
          break;
        
        case 'd':
      
          right();
          break;
        
        case 'r':
        
          zoom = 1;
          zoomx = halfwidth;
          zoomy = halfheight;
          break;
    
        default:
          break;
      }
    }
  }
}

