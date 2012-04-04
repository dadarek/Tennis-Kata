
class Tennis

  def initialize
    @points = { :p1 => 0, :p2 => 0 }
  end

  def score
    [score_of(:p1), score_of(:p2)]
  end

  def point p
    @points[p] += 1
  end

  private 

  def has_advantage p
    player_points = @points[p]
    opponent_points = @points[ opponent_of p ]

    player_points > opponent_points and player_points > 3
  end

  def won p
    player_points = @points[p]
    opponent_points = @points[ opponent_of p ]

    player_points > opponent_points+1 and player_points > 3
  end

  def opponent_of p
    return :p1 if p == :p2
    :p2
  end

  def score_of p
    points = @points[p]

    result = 40 
    result = points * 15 if points < 3
    result = 45 if has_advantage p
    result = 50 if won p
    result 
  end

end
