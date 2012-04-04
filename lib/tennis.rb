
class Tennis
  def initialize
    @scores = { :p1 => 0, :p2 => 0 }
  end

  def score(player)
    @scores[player]
  end

  def point(player)
    @scores[player] = 15
  end
end
