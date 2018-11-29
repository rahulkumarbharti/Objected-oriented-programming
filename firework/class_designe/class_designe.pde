ArrayList<sahpe> shape = new ArrayList<shape> ();




  void setup () {
  size (500, 500);
  
  
    Rectangle rHex = new rectangle (width*1/4, height*1/4, width*2/4, height*2/4, #5FF170 );
    //Rectangle r RGB = new Rectangle(width*3/5, height*3/5, width*1/5, height*1/5, clor(255), random(2550);
    
    
     shapes. add (rHex);
     shapes. add(rRGB);
     shapes. add (cHex)
}
void draw () {
  background (0); // Black
  
  for (int i=0; i<shapes.size(); i++) {
    shapes.get (i). draw();
  
  shape. get (0). draw(); 
  
}
  

abstract class Shape  {
  float x;
  float y;
  
  shape(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
    abstract void draw();
  
}
