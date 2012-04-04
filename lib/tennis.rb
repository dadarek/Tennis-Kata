
class Tennis
  def initialize
    @scoreIndex = 0
    @scores = [0, 15, 30, 40]
  end

  def score
    @scores[@scoreIndex]
  end

  def point player
    @scoreIndex += 1
  end

  def winner
    :p1
  end
end

