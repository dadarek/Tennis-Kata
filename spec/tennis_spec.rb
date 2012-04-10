require 'tennis'

describe Tennis do
  
  before :each do
    @game = Tennis.new
  end

  it "should start with 0 points" do
    @game.score.should == [0, 0]
  end

  it "should count first point as 15" do
    points_for :p1, 1
    @game.score.should == [15, 0]
  end

  it "should count second point as 30" do
    points_for :p1, 2
    @game.score.should == [30, 0]
  end

  it "should count third point as 40" do
    points_for :p1, 3
    @game.score.should == [40, 0]
  end

  it "should count fourth point as 50" do
    points_for :p1, 4
    @game.score.should == [50, 0]
  end

  it "should keep track of both players points" do
    points_for :p2, 1
    @game.score.should == [0, 15]
  end

  it "should count fifth point as 45 on deuce" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "should count sixth point as 50 on advantage" do
    create_advantage :p1
    points_for :p1, 1
    @game.score.should == [50, 40]
  end

  it "should count sixth point as 50 on advantage for p2" do
    create_advantage :p2
    points_for :p2, 1
    @game.score.should == [40, 50]
  end

  it "should reset back to deuce after lost advantage" do
    create_advantage :p1
    points_for :p2, 1
    @game.score.should == [40, 40]
  end

  def create_advantage player
    create_deuce
    points_for player, 1
  end

  def create_deuce
    points_for :p1, 3
    points_for :p2, 3
  end

  def points_for player, points
    points.times{ @game.point player }
  end

end
