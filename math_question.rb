
class MathQuestion
  attr_reader :question, :answer

  def initialize
    generate_question
  end

  def generate_question
    # Generate a random math question
    num1 = rand(1..15)
    num2 = rand(1..15)

    @question = "Whats is #{num1} + #{num2}?"

    @answer = num1 + num2
  end

  def check_answer(player_answer)
    # Check if the player's answer is correct
    player_answer.to_i == @answer
  end
end
