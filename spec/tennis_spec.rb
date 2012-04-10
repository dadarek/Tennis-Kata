require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts score from 0" do
    @game.score.should == [0, 0]
  end

  it "scores first point as 15" do
    point :p1
    @game.score.should == [15, 0]
  end

  it "scores second point as 30" do
    score_points :p1, 2
    @game.score.should == [30, 0]
  end

  it "scores third point as 40" do
    score_points :p1, 3
    @game.score.should == [40, 0]
  end

  it "scores fourth point as 50" do
    score_points :p1, 4
    @game.score.should == [50, 0]
  end

  it "keeps both players scores" do
    point :p2
    @game.score.should == [0, 15]
  end

  it "scores fourth point as 45 on deuce" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "scores fifth point as 50 on advantage" do
    create_advantage :p1
    point :p1
    @game.score.should == [50, 40]
  end

  it "scores fifth point as 50 on advantage for p2" do
    create_advantage :p2
    point :p2
    @game.score.should == [40, 50]
  end

  it "resets to deuce after lost advantage" do
    create_advantage :p1
    point :p2
    @game.score.should == [40, 40]
  end

  def create_advantage player
    score_points :p1, 3
    score_points :p2, 3
    score_points player, 1
  end

  def score_points player, points
    points.times{ point player }
  end

  def point player
    @game.point player
  end

end
