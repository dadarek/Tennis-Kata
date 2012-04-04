require 'tennis'

describe Tennis do
  before(:each) do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    @game.score(:p1).should == 0
    @game.score(:p2).should == 0
  end

  it "adds up points" do
    @game.point(:p1)
    @game.score(:p1).should == 15
  end

end
