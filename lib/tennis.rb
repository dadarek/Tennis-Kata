
class Tennis
  def initialize
    @score = [0, 0]
  end

  def score
    @score
  end

  def point player
    @score[0] += 15 if player == :p1
    @score[1] += 15 if player == :p2
  end

end
