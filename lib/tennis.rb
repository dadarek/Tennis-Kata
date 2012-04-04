
class Tennis
  def initialize
    @score = [0, 0]
  end

  def score
    @score
  end

  def point player
    @score = [15, 0] if :p1 == player
    @score = [0, 15] if :p2 == player
  end
end

