

class Game
  attr_accessor :score, :player1, :player2
  
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @score = Score.new
  end


  def start_game
    loop do
      display_scores
      ask_question
      switch_player
      break if game_over?
    end

    announce_winner
  end

  private

  def display_scores
    puts "Scores: #{@players[0].lives} - #{@players[1].lives}"
  end

  def ask_question
    math_question = MathQuestion.new
    puts "#{@current_player.name}, here's your question:"
    puts math_question.question
    player_answer = gets.chomp

    if math_question.check_answer(player_answer)
      puts "Nice ;-)."
    else
      puts "I dont Think so !."
      @current_player.lose_life
    end
  end

  def switch_player
    @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

  def announce_winner
    winner = @players.find { |player| player.lives > 0 }
    puts "#{winner.name} wins with a score of #{winner.lives}!"
  end
end


