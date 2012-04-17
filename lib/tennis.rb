
class Tennis
  
  def initialize
    @score = { p1: 0, p2: 0 }
  end

  def score
    @score.values
  end

  def ball player
    @score[player] += next_point_value(player)
    set_deuce if lost_advantage? 
  end


  private

  def next_point_value player
    result = 15
    result = 10 if @score[player] >= 30
    result = 5 if deuce? or advantage?

    result
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

  def set_deuce
    @score = { p1: 40, p2: 40 }
  end

end
