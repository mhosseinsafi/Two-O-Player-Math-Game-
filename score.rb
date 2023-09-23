class Score
  def initialize
    @scores = { player1: 0, player2: 0 }
  end

  def update_score(player, points)
    @scores[player.name.downcase.to_sym] = points
  end

  def get_scores
    @scores
  end
end