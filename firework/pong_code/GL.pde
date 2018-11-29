import java.awt.event.ActionEvent; //importing action event
import java.awt.event.ActionListener; //importing action listener

import javax.swing.JButton; //importing jbutton
import javax.swing.JCheckBox; //importing jcheckbox
import javax.swing.JFrame; //importing JFrame
import javax.swing.JPanel; //importing JPanel

public class MainMenu extends JFrame { //starts public class called mainmenu and inherits JFrame attributes
  private static final long serialVersionUID = 1L; //universal version identifier

  int screenWidth = 300; //sets the window width
  int screenHeight = 200; //sets the window height

  int buttonWidth = 75; //sets the button width
  int buttonHeight = 55; //sets the button height

  JButton Play, Quit; //list of JButtons on menu
  
  public MainMenu() { //starts public called MainMenu

    addButtons(); //adds a button
    addActions(); //adds a button

    getContentPane().setLayout(null); //Sets the layout of the buttons inside of the window, without it, the buttons go massive

    Play.setBounds((screenWidth - buttonWidth) / 2, 25, buttonWidth, buttonHeight); // Position the Play button
    Quit.setBounds((screenWidth - buttonWidth) / 2, 85, buttonWidth, buttonHeight); // Position the Quit button
    
    // Adding buttons
    getContentPane().add(Play); // Add the button to the JFrame
    getContentPane().add(Quit); // Add the button to the JFrame
    
    // JFrame stuff
    pack(); //allows window to be preferred size
    setVisible(true); //allows the window to be visible
    setLocationRelativeTo(null); //this centres everything in the frame of the screen
    setSize(screenWidth, screenHeight); //sets main menu window size
    setTitle("Pong Menu"); //sets the window title for the main menu
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    setResizable(false); //disables the user from being able to resizing the window of the main menu
  } //ends public MainMenu

  private void addButtons() { //starts private void called addButtons
    Play = new JButton("Play");  //Defines Play as the top button of the main menu which displays as Play on the button
    Quit = new JButton("Quit"); //Defines Quit as the top button of the main menu which displays as Quit on the button
    
  } //ends private void addButtons

  private void addActions() { //starts private void called addActions

    Play.addActionListener(new ActionListener() { // Take Play button, add new actionlistener
          public void actionPerformed(ActionEvent e) { // Turn the action performed into a variable for usage
            dispose(); //disposes

            Game game = new Game(); //opens the main game

            

            game.start(); //starts the main game
          } //ends public void actionPerformed(ActionEvent e)
        });// Ends Play button

    Quit.addActionListener(new ActionListener() { // Take Quit button, add new actionlistener
          public void actionPerformed(ActionEvent e) { // Turn the action performed into a variable for usage
            System.exit(0); // Shut down the program
          } //ends public void actionPerformed(ActionEvent e)
        });// Quit button
    
    
  } //ends private void addButtons
}//ends public class MainMenu
