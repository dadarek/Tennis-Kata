require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with 0 score" do
    @game.score.should == [0, 0]
  end

  it "treats first point as 15" do
    @game.point :p1
    @game.point :p2
    @game.score.should == [15, 15]
  end

  it "treats second point as 30" do
    @game.point :p1
    @game.point :p2
    @game.point :p1
    @game.point :p2
    @game.score.should == [30, 30]
  end

end
