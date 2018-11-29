class circle extends shapes {
  
  float 
  
    
  
  circle((float x, float y, float width, float height, color c) {
    uper(x,y);
      this. width = width;
      this. height = height;
      this.c = c;
    
    }
    
    void draw() {
      fill (c);
      
    }
     void setup() {
       y++;
     }
    
  
}
