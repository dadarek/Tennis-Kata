require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with 0 score" do
    @game.score.should == [0, 0]
  end

  it "treats first point as 15" do
    points 1, 1
    @game.score.should == [15, 15]
  end

  it "treats second point as 30" do
    points 2, 2
    @game.score.should == [30, 30]
  end

  it "treats third point as 40" do
    points 3, 3
    @game.score.should == [40, 40]
  end

  it "treats fourth point as 45" do
    points 4, 3
    @game.score.should == [45, 40]
  end

  def points p1, p2
    p1.times { @game.point :p1 }
    p2.times { @game.point :p2 }
  end

end
