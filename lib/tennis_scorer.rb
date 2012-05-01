
class TennisScorer

  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def ball_for player
    @score[player] += next_point_value(player)
    set_deuce if lost_advantage? 
  end

  def winner
    return :p1 if @score[:p1] == 50
    return :p2 if @score[:p2] == 50
  end

  private
  
  def set_deuce
    @score = { p1: 40, p2: 40 }
  end

  def next_point_value player
    return 5 if advantage?
    return 5 if deuce?
    return 10 if @score[player] >= 30
    return 15
  end

  def deuce?
    score == [40, 40]
  end

  def advantage?
    score.include? 45
  end

  def lost_advantage?
    score == [45, 45]
  end

end
