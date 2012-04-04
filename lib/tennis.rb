
class Tennis

  def initialize
    @points = []
  end

  def score
    p1s = @points.count :p1
    p2s = @points.count :p2

    p1 = points p1s
    p2 = points p2s

    result = [p1, p2]
    result = [40, 40] if (p1 == p2 and p1 > 40)
    result = [45, 40] if (p1 == p2 + 5 and p1 > 40)
    result
  end

  def points n
    result = 0

    n.times { |i|
      value = 15
      value = 10 if i == 2
      value = 5 if i > 2

      result += value
    }

    result 
  end

  def point player
    @points << player
  end

end
