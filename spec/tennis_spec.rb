require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with no score" do
    @game.score.should == [0, 0]
  end

  it "adds 15 to p1's first point" do
    @game.point :p1
    @game.score.should == [15, 0]
  end

  it "adds 15 to p2's first point" do
    @game.point :p2
    @game.score.should == [0, 15]
  end

  it "adds 15 to p1's second point" do
    @game.point :p1
    @game.point :p1
    @game.score.should == [30, 0]
  end

  it "adds 10 to third point" do
    @game.point :p1
    @game.point :p1
    @game.point :p1
    @game.score.should == [40, 0]
  end

  it "adds 10 to fourth point" do
    @game.point :p1
    @game.point :p1
    @game.point :p1
    @game.point :p1
    @game.score.should == [50, 0]
  end

end
