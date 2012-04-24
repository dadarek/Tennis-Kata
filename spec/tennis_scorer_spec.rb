require 'tennis_scorer'

describe TennisScorer do

  before :each do
    @scorer = TennisScorer.new
  end

  it "starts at 0-0" do
    @scorer.score.should == [0, 0]
  end

  it "treats first ball as 15" do
    balls_for :p1, 1
    @scorer.score.should == [15, 0]
  end

  it "treats the second ball as 30" do
    balls_for :p1, 2
    @scorer.score.should == [30, 0]
  end

  it "treats the third ball as 40" do
    balls_for :p1, 3
    @scorer.score.should == [40, 0]
  end

  it "treats the fourth ball as 50" do
    balls_for :p1, 4
    @scorer.score.should == [50, 0]
  end

  it "keeps track of both players" do
    balls_for :p2, 4
    @scorer.score.should == [0, 50]
  end

  it "treats advantage as 45" do
    create_advantage :p1
    @scorer.score.should == [45, 40]
  end

  it "treats game-ball as 50" do
    create_advantage :p1
    balls_for :p1, 1
    @scorer.score.should == [50, 40]
  end

  it "resets to 40-40 on lost advantage" do
    create_advantage :p1
    balls_for :p2, 1
    @scorer.score.should == [40, 40]
  end

  def balls_for player, how_many
    how_many.times{ @scorer.ball_for player }
  end

  def create_advantage player
    balls_for :p1, 3
    balls_for :p2, 3
    balls_for player, 1
  end

end
