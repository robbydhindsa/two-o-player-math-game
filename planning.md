# Math Game:
- Game loop
- Uses both player and question class
- Runs logic
  - starts game
  - check if answer is correct
  - checks if player has lost all lives 
  - checks if player has won - after answering a question
  - checks whose turn it is

# Player (will not contain any user input):
- Number of lives left
- Player name

def initialize(n)
  @name = n
  @lives = 3

# Question:
- First # between 1 and 20
- Second # between 1 and 20
- Addition problem
- Answer to problem
- Answer received from other player


# Other Notes:
- while loop: 
- while Player1 lives > 0 && Player2 lives > 0 do: 
  - initiate a turn:

    - puts "NEW TURN"

    - ask a question to Player 1
    - wait for Player 1 input
    - if answer is correct:
      - puts "Good job!" message
    - if answer if incorrect:
      - puts "Wrong answer" message
      - deduct 1 life
    - check if Player 1 still has lives:
      - if yes, continue to next step
      - if no, end game and declare Player 2 the winner
    
    - ask a question to Player 2
    - wait for Player 2 input
    - if answer is correct: 
      - puts "Good job!" message
    - if answer is incorrect:
      - puts "Wrong answer" message
      - deduct 1 life
    - check if Player 2 still has lives:
      - if yes, continue to next step
      - if no, end game and declare Player 2 the winner
