
class Tennis
  def initialize
    @score = 0
  end

  def score(player)
    return @score if player == :p1
    0
  end

  def point(player)
    @score = 15;
  end
end
