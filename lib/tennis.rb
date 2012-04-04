
class Tennis

  def initialize
    @points = []
  end

  def score
    p1s = @points.count :p1
    p2s = @points.count :p2

    p1 = points p1s
    p2 = points p2s

    result = [p1, p2]
    result = [45, 40] if has_advantage :p1
    result = [40, 45] if has_advantage :p2
    result = [40, 40] if (p1 == p2 and p1 > 40)
    result
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

  def points n
    result = 0

    n.times { |i|
      value = 15
      value = 10 if i == 2
      value = 5 if i > 2

      result += value
    }

    result 
  end

end
