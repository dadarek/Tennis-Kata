
class Tennis

  def initialize
    @score = { :p1 => 0, :p2 => 0 }
  end

  def score
    @score.values
  end

  def point player
    @score[player] += 15
  end

end
