
class Tennis
  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def point player
    if @score[player] <= 15 then
      @score[player] += 15
    else
      @score[player] += 10
    end
  end

end
