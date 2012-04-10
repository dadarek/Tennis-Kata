require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts from 0" do
    @game.score.should == [0, 0]
  end

  it "counts first point as 15" do
    score_points :p1, 1
    @game.score.should == [15, 0]
  end

  it "counts second point as 30" do
    score_points :p1, 2
    @game.score.should == [30, 0]
  end

  it "counts third point as 40" do
    score_points :p1, 3
    @game.score.should == [40, 0]
  end

  it "counts fourth point as 50" do
    score_points :p1, 4
    @game.score.should == [50, 0]
  end

  it "keeps track of both players" do
    score_points :p2, 1
    @game.score.should == [0, 15]
  end

  it "counts fourth point as 45 on deuce" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "counts fifth point as 50 on advantage" do
    create_advantage :p1
    score_points :p1, 1
    @game.score.should == [50, 40]
  end

  it "resets to deuce on lost advantage" do
    create_advantage :p1
    score_points :p2, 1
    @game.score.should == [40, 40]
  end

  def create_advantage player
    create_deuce
    score_points player, 1
  end

  def create_deuce
    score_points :p1, 3
    score_points :p2, 3
  end

  def score_points player, points
    points.times { @game.point player }
  end
  
end
