
class Tennis
  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def point player
    points_to_add = 15
    points_to_add = 10 if @score[player] > 15

    @score[player] += points_to_add
  end

end
