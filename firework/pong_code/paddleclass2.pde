import java.awt.Color; //this imports the java.awt.color library
import java.awt.Graphics; //this imports the java.awt.graphics library
import java.awt.Rectangle; //this imports the java.awt.rectangle library

public class PlayerPaddle2 { //this declares a public class named PlayerPaddle
  
  int x; //this declares the integer X
  int y; //this declares the integer Y
  int width = 20; /*Defines width of paddle 1*/
  int height = 90; /*Defines height of paddle 1*/
  int speed = 7; /*Defines speed of Paddle 1*/

  Rectangle boundingBox; //this declares a rectangle that will be the boundaries of the paddles for collisions

  boolean goingUp = false; //this creates a boolean called goingUp and then declares that as false
  boolean goingDown = false; //this creates a boolean called goingDown and then declares that as false

  public PlayerPaddle2(int x, int y) { //this declares the a method that is called PlayerPaddle and calls to integer X and Y it is using it for the x and Y location
    this.x = x; //this declares that when using the term X it means to use the X integer in this class
    this.y = y; //this declares that when using the term Y it means to use the Y integer in this class
    
    boundingBox = new Rectangle(x, y, width, height); //this declares a new rectangle for those boundaries
    boundingBox.setBounds(x, y, width, height); //this declares the location of the bounding rectangle, the height and width for this was declared earlier in the class
  } //this closes public PlayerPaddle(int x, int y)

  public void tick(Game game) { //this declares the update method and will perform everything in this method with every tick
    boundingBox.setBounds(x, y, width, height); //this sets the limits to how far an object can travel along the X and Y axis
    
    if (goingUp && y > 0) { //this if statement will check if whether or not GoingUp is true and it will evaluate the equation on the right that is "Y > 0"
      y -= speed; //This will stop the paddle from going below 0 on the Y axis
    } //this closes if (goingUp && y > 0)
    if (goingDown && y < game.getHeight() - height) { //this will check if GoingDown is true and then it will evaluate the equation "Y < than window height - the height of the paddle"
      y += speed; //this will stop the paddle from going above the window height - paddle height
    } //this closes if (goingDown && y < game.getHeight() - height)
  } //this closes public void tick(Game game)

  public void render(Graphics g) { //this declares the method that is able to render graphics called "G"
    g.setColor(Color.WHITE); //this sets the colour of the graphics that are being rendered, which happens to be white
    g.fillRect(x, y, width, height); //This renders a rectangle

  } //this closes public void render(Graphics g)
} //this closes the entire PlayerPaddle2 class
