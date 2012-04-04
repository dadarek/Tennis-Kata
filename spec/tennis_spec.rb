require 'tennis'

describe Tennis do
  it "starts with 0 points" do
    @game = Tennis.new
    @game.score.should == [0, 0]
  end

  it "remembers score" do
    @game = Tennis.new
    @game.point :p1
    @game.score.should == [15, 0]
  end
end
