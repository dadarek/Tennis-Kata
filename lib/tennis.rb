
class Tennis
  def initialize
    @scoreIndex = 0
    @scores = [0, 15, 30, 40]
  end

  def score
    [p1_score, 0]
  end

  def point player
    @scoreIndex += 1
  end

  private

  def p1_score
    @scores[@scoreIndex]
  end

end

