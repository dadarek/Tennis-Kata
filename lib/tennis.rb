
class Tennis

  def initialize
    @points = []
  end

  def score
    [score_of(:p1), score_of(:p2)]
  end

  def point player
    @points << player
  end

  private 

  def has_advantage player
    player_points = @points.count player
    opponent_points = @points.count - player_points

    player_points > opponent_points and player_points > 3
  end

  def won player
    player_points = @points.count player
    opponent_points = @points.count - player_points

    player_points > opponent_points+1 and player_points > 3
  end

  def score_of player
    points = @points.count player

    result = 40 
    result = 0 if points == 0
    result = 15 if points == 1
    result = 30 if points == 2
    result = 45 if has_advantage player
    result = 50 if won player
    result 
  end

end
