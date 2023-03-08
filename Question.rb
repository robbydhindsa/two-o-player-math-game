class Question

  attr_accessor :correct_answer, :display_question

  def initialize
    @first_number = rand(20)
    @second_number = rand(20)
    @correct_answer = @first_number + @second_number
    @display_question = "What's #{@first_number} + #{@second_number}?"
  end

  def player_answer
    guess = gets.chomp
  end

end
