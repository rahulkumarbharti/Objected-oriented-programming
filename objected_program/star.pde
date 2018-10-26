class Star {
  private float x;
  private float y;
  private float radius;
  private static int startcount = 50; //number of star or Pong Balls that will be dream
  private static int maxRadius = 20; //can this be a ration of width with error cheacking for different

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  } //End of Constructor

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
} //End of Start
