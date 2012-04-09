require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with no score" do
    game = Tennis.new
    game.score.should == [0, 0]
  end

  it "adds 15 to first point" do
    game = Tennis.new
    game.point :p1
    game.score.should == [15, 0]
  end

end
