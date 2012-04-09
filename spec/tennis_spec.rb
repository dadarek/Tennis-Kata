require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with no score" do
    @game.score.should == [0, 0]
  end

  it "adds 15 to p1's first point" do
    score_points :p1, 1
    @game.score.should == [15, 0]
  end

  it "adds 15 to p2's first point" do
    score_points :p2, 1
    @game.score.should == [0, 15]
  end

  it "adds 15 to p1's second point" do
    score_points :p1, 2
    @game.score.should == [30, 0]
  end

  it "adds 10 to third point" do
    score_points :p1, 3
    @game.score.should == [40, 0]
  end

  it "adds 10 to fourth point" do
    score_points :p1, 4
    @game.score.should == [50, 0]
  end

  it "adds 5 to fourth point if deuce" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "adds 5 to p1's fifth point if advantage" do
    create_advantage :p1
    score_points :p1, 1
    @game.score.should == [50, 40]
  end

  it "adds 5 to p2's fifth point if advantage" do
    create_deuce
    score_points :p2, 2
    @game.score.should == [40, 50]
  end

  def score_points player, points
    points.times { @game.point player }
  end

  def create_deuce
    score_points :p1, 3
    score_points :p2, 3
  end

  def create_advantage player
    create_deuce
    score_points player, 1
  end

end
