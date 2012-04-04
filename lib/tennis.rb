
class Tennis
  def initialize
    @scoreIndex = 0
    @scores = [0, 15, 30, 40]
  end

  def score
    [@scores[@scoreIndex], 0]
  end

  def point player
    @scoreIndex += 1
  end

end

