import java.awt.event.KeyEvent; //importing keyevent - this is a library
import java.awt.event.KeyListener; //importing keylistener - this is a library

public class InputHandler implements KeyListener { //this declares the new class called InputHandler and also declares a KeyListener

  public InputHandler(Game game) { //this declares the method
    game.addKeyListener(this); //this adds the KeyListener
  } // this closes public InputHandler(Game game)

  public void keyPressed(KeyEvent e) { //this creates a method the detects activity on the keyboard
    int keyCode = e.getKeyCode(); //everything the follows this code controls the paddles via the keyboard

    // Player 1 controls
    if (keyCode == KeyEvent.VK_W) { //this detects where or not the W key has been pressed or not
      Game.player.goingUp = true; //if the above is true, player 1 goes up
    } //this closes if (keyCode == KeyEvent.VK_W)
    if (keyCode == KeyEvent.VK_S) { //this detects whether or not the S key has been pressed or not
      Game.player.goingDown = true; //if this is true, player 1 goes down
    } //this closes if (keyCode == KeyEvent.VK_S)

    // Player 2 controls
    if (keyCode == KeyEvent.VK_UP) { //this detects if the directional up key has been pressed or not
      Game.player2.goingUp = true; //if this is true, player 2 goes up
    } //this closes if (keyCode == KeyEvent.VK_UP)
    if (keyCode == KeyEvent.VK_DOWN) { //this detects if the directional down key has been pressed or not
      Game.player2.goingDown = true; //if this is true, player 2 goes down
    } //this closes if (keyCode == KeyEvent.VK_DOWN)

    // Other controls
    if (keyCode == KeyEvent.VK_ESCAPE) { //this detects if the escape key has been pressed or not
      System.exit(0); //if the above is true, the program will exit
    } //this closes if (keyCode == KeyEvent.VK_ESCAPE)
    if (keyCode == KeyEvent.VK_H) { //this detects if the H key has been pressed or not
      help.Helpon = true; //if the above is true, the on screen help will display at the bottom of the screen
    } //this closes if (keyCode == KeyEvent.VK_H)
    
  } //this closes public void keyPressed(KeyEvent e)

  public void keyReleased(KeyEvent e) { //this declares the method where it detects if a key has been released
    int keyCode = e.getKeyCode(); //key code is essentially the 'code' name for the keys on the keyboard

    // Player 1 controls
    if (keyCode == KeyEvent.VK_W) { //this detects if the W key has been released or not
      Game.player.goingUp = false; //when W key has been released, player1 does not move up or any other direction
    } //this closes if (keyCode == KeyEvent.VK_W)
    if (keyCode == KeyEvent.VK_S) { //this detects if the S key has been released or not
      Game.player.goingDown = false; //when S key has been released, player1 does not move down or any other direction
    } //this closes if (keyCode == KeyEvent.VK_S)

    // Player 2 controls
    if (keyCode == KeyEvent.VK_UP) { //this detects if the directional up key has been released or not
      Game.player2.goingUp = false; //when the directional up key has been released, player2 does not move up or any other direction
    } //this closes if (keyCode == KeyEvent.VK_UP)
    if (keyCode == KeyEvent.VK_DOWN) { //this detects if the directional down has been released or not
      Game.player2.goingDown = false; //when the directional down key has been released, player2 does not move up or any other direction
    } //this closes if (keyCode == KeyEvent.VK_DOWN)

    // help Toggle
    if (keyCode == KeyEvent.VK_H) { //this detects if the H has been released or not
    Game.help.Helpon = false; //when the H key has been released, help does not show up on screen anymore
    } //this closes if (keyCode == KeyEvent.VK_H)
  } //this closes public void keyReleased(KeyEvent e)

  public void keyTyped(KeyEvent e) { //this is needed for the KeyListeners

  } //closes public void keyTyped(KeyEvent e)

} //closes the entire InputHandler class
