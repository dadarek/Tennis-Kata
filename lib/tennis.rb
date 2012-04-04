
class Tennis
  def initialize
    @index = { :p1 => 0, :p2 => 0 }
    @scores = [0, 15, 30, 40]
  end

  def score
    [p1_score, p2_score]
  end

  def point player
    @index[player] += 1
  end

  def winner
    return :p1 if @index[:p1] >= 4 and p1_is_ahead_2
    return :p2 if @index[:p2] >= 4 and p2_is_ahead_2
  end

  private

  def p1_is_ahead_2
    @index[:p1] - @index[:p2] > 1
  end

  def p2_is_ahead_2
    @index[:p2] - @index[:p1] > 1
  end

  def p1_score
    @scores[@index[:p1]]
  end

  def p2_score
    @scores[@index[:p2]]
  end

end

