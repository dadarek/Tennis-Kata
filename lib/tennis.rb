
class Tennis

  def initialize
    @score = { :p1 => 0, :p2 => 0 }
  end

  def score
    @score.values
  end

  def point player
    value = 15
    value = 10 if @score[player] == 30
    value = 5 if @score[player] == 40

    @score[player] += value
  end

end
