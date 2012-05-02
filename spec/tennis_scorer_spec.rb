require 'tennis_scorer'

describe TennisScorer do

  before :each do
    @scorer = TennisScorer.new
  end

  it "starts with 0-0" do
    @scorer.score.should == [0, 0]
  end

  it "counts first ball as 15" do
    balls_for :p1, 1
    @scorer.score.should == [15, 0]
  end

  it "counts second ball as 30" do
    balls_for :p1, 2
    @scorer.score.should == [30, 0]
  end

  it "counts third ball as 40" do
    balls_for :p1, 3
    @scorer.score.should == [40, 0]
  end

  it "counts fourth ball as 50" do
    balls_for :p1, 4
    @scorer.score.should == [50, 0]
  end

  it "keeps track of both players" do
    balls_for :p2, 4
    @scorer.score.should == [0, 50]
  end

  it "counts advantage ball as 45" do
    create_advantage :p1
    @scorer.score.should == [45, 40]
  end

  it "counts game ball as 50" do
    create_advantage :p1
    balls_for :p1, 1
    @scorer.score.should == [50, 40]
  end

  it "resets to deuce on lost advantage" do
    create_advantage :p1
    balls_for :p2, 1
    @scorer.score.should == [40, 40]
  end

  it "knows when p1 wins" do
    balls_for :p1, 4
    @scorer.winner.should == :p1
  end

  it "knows when p2 wins" do
    balls_for :p2, 4
    @scorer.winner.should == :p2
  end

  it "knows when nobody won" do
    @scorer.winner.should == nil
  end

  def create_advantage player
    balls_for :p1, 3
    balls_for :p2, 3
    balls_for player, 1
  end

  def balls_for player, how_many
    how_many.times{ @scorer.ball_for player }
  end

end
