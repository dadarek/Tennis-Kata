
class Tennis
  def initialize
    @score = 0
  end

  def score
    @score
  end

  def point player
    @score += 15
  end
end

