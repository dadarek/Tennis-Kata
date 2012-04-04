
class Tennis
  def initialize
    @p1ScoreIndex = 0
    @p2ScoreIndex = 0
    @scores = [0, 15, 30, 40]
  end

  def score
    [p1_score, p2_score]
  end

  def point player
    @p1ScoreIndex += 1 if player == :p1
    @p2ScoreIndex += 1 if player == :p2
  end

  def winner
    return :p1 if @p1ScoreIndex == 4 and @p2ScoreIndex < 3
    return :p2 if @p2ScoreIndex == 4 and @p1ScoreIndex < 3
  end

  private

  def p1_score
    @scores[@p1ScoreIndex]
  end

  def p2_score
    @scores[@p2ScoreIndex]
  end

end

