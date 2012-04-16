
class Tennis

  def initialize
    @score = { p1: 0, p2: 0}
  end

  def score
    @score.values
  end

  def ball player
    points = 15
    points = 10 if @score[player] >= 30
    points = 5 if deuce?
    points = 5 if advantage?

    @score[player] += points

    set_deuce if lost_deuce? 
  end


  private

  def lost_deuce?
    score == [45, 45]
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
