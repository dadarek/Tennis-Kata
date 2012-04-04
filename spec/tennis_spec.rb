require 'tennis'

describe Tennis do
  before :each do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    @game.score.should == [0, 0]
  end

  it "remembers p1 score" do
    @game.point :p1
    @game.score.should == [15, 0]
  end

  it "remembers p2 score" do
    @game.point :p2
    @game.score.should == [0, 15]
  end
end
