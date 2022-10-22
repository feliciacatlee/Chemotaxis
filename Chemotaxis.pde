Fish[] little;

void setup()  {
  size(400, 400);
  little = new Fish[100];
  for(int i = 0; i < little.length; i++)
    little[i] = new Fish();
}

void draw()  {
  background(#66B5B7);
  for(int i = 0; i < little.length; i++) {
    little[i].walk();
    little[i].show();
  }
}

class Fish  {
  int myX, myY, myColor;
  Fish()  {
    myX = 200;
    myY = 200;
    myColor  = color((int)(Math.random()*30)+110, (int)(Math.random()*30)+133, (int)(Math.random()*30)+170);
  }
 
  void walk()  {
    myX += (int)(Math.random()*7) - 5;
    myY += (int)(Math.random()*7) - 3;
    if(myX > 400 || myX < 0)
      myX = Math.floorMod(myX, 400);
    if(myY > 400 || myY < 0)
      myY = Math.floorMod(myY, 400);
  }
 
  void show()  {
    stroke(#387979);
    fill(myColor);
    ellipse(myX, myY, 10, 5);
    triangle(myX + 5, myY, myX + 10, myY - 3, myX + 10, myY + 3);
  }
}
