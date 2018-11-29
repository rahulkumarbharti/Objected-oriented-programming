import java.awt.BorderLayout; //importing boarder layout
import java.awt.Canvas; //importing canvas
import java.awt.Color; //importing colour
import java.awt.Dimension; //importing dimensions
import java.awt.Graphics; //importing graphics
import java.awt.image.BufferStrategy; //importing buffer strategy
import java.awt.image.BufferedImage; //importing buffered image

import javax.swing.JFrame; // importing jFrame

public class Game extends Canvas implements Runnable { // starts the game class
  private static final long serialVersionUID = 1L; //universal version identifier

  public static PlayerPaddle player; //creates the variable for player
  public static PlayerPaddle2 player2; // creates the variable of player2
  public static Ball ball; //creates the variable of ball
  public static help help; // creates the variable of help
  InputHandler IH; // creates the variable of IH

  JFrame frame; // Window of the game
  public static final int WIDTH = 850; // Width of window
  public static final int HEIGHT = 650; // Height of window
  public final Dimension gameSize = new Dimension(WIDTH, HEIGHT); // Condense WIDTH & HEIGHT into 1 variable
  public final String TITLE = "Alex Bailey - Pong - PRESS H FOR HELP"; //creates the title

  

  static boolean gameRunning = false; // Whether the game is running

  int p1Score, p2Score; //states the player score integers
  
  public void run() { //public void for the run sequence

    while (gameRunning) { // If gameRunning = true
      tick(); // If gameRunning = true
      render(); // If gameRunning = true

      requestFocus(); // If gameRunning = true
      try { // If gameRunning = true
        Thread.sleep(7); // If gameRunning = true
      } catch (Exception e) { // If gameRunning = true
        e.printStackTrace(); // If gameRunning = true
      } //closes catch (Exception e)

    } //closes while (gameRunning)
  } //closes public void run()

  public synchronized void start() { //begins start method
    gameRunning = true; //this tells the game to start on the next line (if the gamerunning is active
    new Thread(this).start(); //this starts the game
  } // End start method

  public static synchronized void stop() { //begins stop method
    gameRunning = false; //this tells the game to stop on the next line (if the gamerunning is not active
    System.exit(0); //this stops and exits the game
  } // End stop method

  public Game() { //creates public for game
    frame = new JFrame(); //creates new jframe

    setMinimumSize(gameSize); //sets the minimum size by gameSize
    setPreferredSize(gameSize); //sets the minimum size by gameSize
    setMaximumSize(gameSize); //sets the minimum size by gameSize

    frame.add(this, BorderLayout.CENTER);
    frame.pack();

    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //tells the jframe to close
    frame.setVisible(true); //makes the jframe visible
    frame.setResizable(false); //does not allow players to resize the window
    frame.setTitle(TITLE); //sets the title for the window
    frame.setLocationRelativeTo(null); //sets the location relative to null

    IH = new InputHandler(this);//this defines the input handler

    player = new PlayerPaddle(10, 60); //places player1 paddle and assigns the position on screen
    player2 = new PlayerPaddle2( 820, 60); //places player2 paddle and assigns the position on screen
    ball = new Ball(getWidth() / 2, getHeight() / 2); //places ball and assigns the position on screen
    

  } //this closes public Game()

  public void tick() { //this open public void tick()
    player.tick(this); //this sets up player 1 to tick,which refreshes and checks for player inputs and so on
    player2.tick(this); //this sets up player 2 to tick,which refreshes and checks for player inputs and so on
    ball.tick(this); //this sets up the tick for the ball so that it realizes where it is in order to bounce off things etc
  
    
  } //this closes public void tick()
  

  public void render() { //this opens the render method
    BufferStrategy bs = getBufferStrategy(); // this
    if (bs == null) { //This say that is BS is null it needs to run the following action below
      createBufferStrategy(3); //this creates the buffer strategy
      return; //this returns the value from the method
    } // this closes if (bs == null) method
    Graphics g = bs.getDrawGraphics(); //this buffers drawn graphics
    
    g.setColor( Color.BLACK ); //setting the colour black
    g.fillRect( 0, 0, getWidth(), getHeight() ); //filling the black rectangle (bckground)
    
    if (help.Helpon) { //this starts the method of help
    g.setColor(Color.WHITE); //sets the colour 
    g.drawString("Player 2: Up and Down Arrows", 650, 640);// draws the help for player 2 and sets position
    g.drawString("Player 1: W and S Keys", 10, 640); // draws the help for player 1 and sets position
    } //this ends the method of help
    g.setColor(Color.WHITE); //sets the colour for the player name and score

    g.drawString("Player 1: " + p1Score, 5, 15); //draws player name and score and sets position
    g.drawString("Player 2: " + p2Score, 775, 15); //draws player name and score and sets position
    
    player.render(g); //renders player variable graphics
    player2.render(g); //renders player2 variable graphics
    ball.render(g); //renders ball variable graphics
    
    g.dispose(); //disposes of the frame
    bs.show(); //shows the buffered image
  } // this closes the render method
} //this closes the entire class
