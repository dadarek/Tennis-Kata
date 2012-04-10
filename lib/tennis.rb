
class Tennis

  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def point player
    @score[player] += next_point_value(player)
    set_deuce if score == [45, 45]
  end

  private

  def next_point_value player
    result = 15
    result = 10 if @score[player] >= 30
    result = 5 if deuce? or advantage?
    result
  end

  def set_deuce
    @score = { p1: 40, p2: 40 }
  end

  def deuce?
    score == [40, 40]
  end

  def advantage?
    score.include? 45
  end

end
