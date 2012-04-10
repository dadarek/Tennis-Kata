require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "should start with 0 score" do
    @game.score.should == [0, 0]
  end

  it "should add 15 points for first ball" do
    points_for :p1, 1
    @game.score.should == [15, 0]
  end

  it "should add 15 points for the second ball" do
    points_for :p1, 2
    @game.score.should == [30, 0]
  end

  it "should add 10 for the third ball" do
    points_for :p1, 3
    @game.score.should == [40, 0]
  end

  it "should add 10 for the fourth ball" do
    points_for :p1, 4
    @game.score.should == [50, 0]
  end

  it "should keep score for both players" do
    points_for :p2, 1
    @game.score.should == [0, 15]
  end

  it "should add 5 points on winning ball at deuce" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "should add 5 points on advantage" do
    create_advantage :p1
    points_for :p1, 1
    @game.score.should == [50, 40]
  end

  it "should revert to deuce on lost advantage" do
    create_advantage :p2
    points_for :p1, 1
    @game.score.should == [40, 40]
  end

  def points_for player, number_of_points 
    number_of_points.times { @game.point player }
  end

  def create_deuce
    points_for :p1, 3
    points_for :p2, 3
  end

  def create_advantage player
    create_deuce
    points_for player, 1
  end

end
