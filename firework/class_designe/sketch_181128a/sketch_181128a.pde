 private ArrayList<Shape> shapes = new ArrayList<Shape>();
Circle cHex;

Shape triangle = new shape (50, 75)  {
  void draw () {
    fill (0, 255, 255);
    triangle (x,y, x-10, y-10, y+10);
  }
}


void setup() {
  size (500, 500);

  Rectangle rHex = new Rectangle(width*1/4, height*1/4, width*2/4, height*2/4, #05FF17 );
  Rectangle rRGB = new Rectangle(width*3/5, height*3/5, width*1/5, height*1/5, color(random(255), random(255), random(255) ) );
  cHex = new Circle(width*1/2, height*1/2, width*1/4, #FFF703);
  
  //Local Object, will not be seen outside setup()
  //Circle cHex = new Circle(width*1/2, height*1/2, width*1/4, #FFF703);

  //shapes declared as ArrayList, seen outside setup()
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cHex);
}

public void draw() {
  background (0); //Black

  //Draw Static Shapes
  for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }
  
  //Moving Circle
  cHex.step();
  shapes.get(2).draw(); //Actually moves the object, does not need previous style animation
}

 abstract class Shape {
  float x;
  float y;

  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
}
