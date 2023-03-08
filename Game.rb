require "./Player"
require "./Question"

class Game

  def launch_game
    puts "Welcome to the TwO-O-Player Ruby Math Game!"

    player_1 = Player.new("Player 1")
    player_2 = Player.new("Player 2")

    
    while (player_1.lives > 0 && player_2.lives > 0) do

      puts "------- PLAYER 1'S TURN -------"

      new_question = Question.new
      puts "Player 1: " + new_question.display_question
      player1_answer = gets.chomp.to_i
      # Check if answer is correct
      if player1_answer == new_question.correct_answer
        puts "Correct! Good answer!"
      else
        if player_1.lives == 1
          puts("Game over. Player 2 wins!")
          player_1.lives -= 1
        else
          puts "Incorrect! You lose a life."
          player_1.lives -= 1
          puts("Player 1: #{player_1.lives} lives remaining.")
        end
      end

      puts "------- PLAYER 2'S TURN -------"
      newer_question = Question.new
      puts "Player 2: " + newer_question.display_question
      player2_answer = gets.chomp.to_i
      # Check if answer is correct
      if player2_answer == newer_question.correct_answer
        puts "Correct! Good answer!"
      else
        if player_2.lives == 1
          puts("Game over. Player 1 wins!")
          player_2.lives -= 1
        else
          puts "Incorrect! You lose a life."
          player_2.lives -= 1
          puts("Player 2: #{player_2.lives} lives remaining.")
        end
      end

    end

  end

end
