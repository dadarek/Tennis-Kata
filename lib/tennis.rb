
class Tennis
  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def point player
    @score[player] += next_point_value(player)
    set_deuce if score == [45, 45]
  end

  def set_deuce
    @score = { p1: 40, p2: 40 }
  end

  def next_point_value player
    result = 15
    result = 10 if @score[player] > 15
    result = 5 if score == [40, 40] 
    result = 5 if score == [45, 40] or score == [40, 45]

    result
  end

end
