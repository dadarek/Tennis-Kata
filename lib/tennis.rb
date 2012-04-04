
class Tennis

  def initialize
    @points = []
  end

  def score
    result = [score_of(:p1), score_of(:p2)]
    result = [45, 40] if has_advantage :p1
    result = [40, 45] if has_advantage :p2
    result = [40, 40] if is_deuce
    result
  end

  def point player
    @points << player
  end

  def winner
    :p1 if @points.count(:p1) > 3
  end

  private 

  def has_advantage player
    player_points = @points.count player
    opponent_points = @points.count - player_points

    player_points > opponent_points and player_points > 3
  end

  def is_deuce
    p1 = @points.count :p1
    p2 = @points.count :p2
    p1 == p2 and p1 > 3
  end

  def score_of player
    result = 0

    points = @points.count player
    points.times { |i|
      value = 15
      value = 10 if i == 2
      value = 5 if i > 2

      result += value
    }

    result 
  end

end
