
require_relative 'player'
require_relative 'math_question'
require_relative 'score'
require_relative 'game'

# Initialize players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# Initialize the game
game = Game.new(player1, player2)

# Start the game
game.start_game
