require 'tennis'

describe Tennis do

  it "starts with 0 score" do
    game = Tennis.new
    game.score.should == [0, 0]
  end

  it "treats first point as 15" do
    game = Tennis.new
    game.point :p1
    game.point :p2
    game.score.should == [15, 15]
  end

end
