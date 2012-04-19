
class TennisScorer

  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def ball_for player
    points_to_add = 15
    points_to_add = 10 if @score[player] >= 30
    points_to_add = 5 if deuce? or advantage?

    @score[player] += points_to_add

    set_deuce if lost_advantage?
  end

  private

  def deuce?
    score == [40, 40]
  end

  def advantage?
    score.include? 45
  end

  def lost_advantage?
    score == [45, 45]
  end

  def set_deuce
    @score = { p1: 40, p2: 40 }
  end

end
