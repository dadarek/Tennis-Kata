
class Tennis

  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def ball player 
    @score[player] += next_point_value(player)

    set_deuce_if_lost_advantage
  end

  private

  def deuce?
    score == [40, 40]
  end

  def advantage?
     score.include? 45
  end

  def next_point_value player
    points = 15
    points = 10 if @score[player] >= 30
    points = 5 if deuce?
    points = 5 if advantage? 
    points
  end

  def set_deuce_if_lost_advantage
    @score = { p1: 40, p2: 40 } if score == [45, 45]
  end

end
