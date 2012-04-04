
class Tennis

  def initialize
    @score = { :p1 => 0, :p2 => 0 }
  end

  def score
    @score.values
  end

  def point player
    if @score[player] == 40
      @score[player] += 5 
    elsif @score[player] == 30
      @score[player] += 10 
    else
      @score[player] += 15 
    end
  end

end
