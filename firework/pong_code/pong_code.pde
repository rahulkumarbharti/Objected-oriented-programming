import java.awt.Color; //imports the java.awt. color library
import java.awt.Graphics; //imports the java.awt.Graphics library
import java.awt.Rectangle; //imports the java.awt.rectangle library

public class Ball { //opens the public Ball class
  int x, y; //declares that there is an integer called X and an integer called Y
  int size = 20; //sets the size of the ball in pixels
  int speed = 4; //sets the ball of the speed
  int vx, vy; //this sets the diagonal integers that are called VX and VY

  Rectangle boundingBox; //this declares that the boundaries for the ball will be a rectangle

  public Ball(int x, int y) { //this declares that there is a method that is called ball and that it will be using integer X and Y as locations
    this.x = x; //this declares that when using the term X it means to use the X integer in this class
    this.y = y; //this declares that when using the term Y it means to use the Y integer in this class

    vx = speed; //this declared that VX (stands for velocity X) is equal to the speed integer 
    vy = speed;  //this declared that VY (stands for velocity Y) is equal to the speed integer

    boundingBox = new Rectangle(x, y, size, size); //this declares a new rectangle for those boundaries
    boundingBox.setBounds(this.x, this.y, this.size, this.size); //this declares the location of the bounding rectangle as well as its height and width which was all declared earlier in this class
  } //this closes public Ball(int x, int y)

  public void tick(Game game) { //this declares the update method and will perform everything in this method with every tick
    boundingBox.setBounds(x, y, size, size); //this sets the limits to how far an object can travel along the X and Y axis

    if (x <= 0) { //this if statement is checking to see whether or not the X speed is less than or equal to int speed
      game.p2Score++; //adds 1 to player 2's score 
      vx = speed; //this declares that VX (Velocity X) will carry on being equal to int speed
    } else if (x + size >= game.getWidth()) { //this basically means that if (int X + int size is greater than the width of the game window). 
      game.p1Score++; ////adds 1 to player 1's score
      vx = -speed; // this reverts the direction in the X axis
    } // this closes else if (x + size >= game.getWidth())

    if (y <= 0) { // this if statement means that if Y is less than or equal to 0
      vy = speed; //this declares that VY (Velocity Y) will carry on being equal to int speed
    } else if (y + size >= game.getHeight()) { //this basically means that if (int Y + int size is greater than the height of the game window).
      vy = -speed; //this reverts the direction the the Y axis
    } // this closes else if (y + size >= game.getHeight())

    x += vx; //this adds the value of X to the value of VX
    y += vy; //this adds the value of Y to the value of VY

    paddleCollide(game); //this labels the collision
  } //this closes public void tick(Game game)

  private void paddleCollide(Game game) { //this declares the method that will make the ball be able to collide with the oaddles
    if (boundingBox.intersects(game.player.boundingBox)) { //this makes the statement check if that the ball and Player1 bounding boxes collide 
      vx = speed; //this declares that VX (Velocity X) will carry on being equal to int speed
    } else if (boundingBox.intersects(game.player2.boundingBox)) { //this makes the statement check if that the ball and Player2 bounding boxes collide
      vx = -speed; ////this reverts the direction the the X axis
    } //this closes else if (boundingBox.intersects(game.player2.boundingBox))
  } //this closes private void paddleCollide(Game game)

  public void render(Graphics g) { //this declares the method that is able to render graphics called "G"
    g.setColor(Color.WHITE); //this sets the colour of the graphics that are being rendered, which happens to be white
    g.fillOval(x, y, size, size); //This renders an oval

  } //this closes public void render(Graphics g)

} //this closes the entire Ball class
