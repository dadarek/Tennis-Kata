require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with 0-0" do
    @game.score.should == [0, 0]
  end

  it "counts first ball as 15" do
    balls :p1, 1
    @game.score.should == [15, 0]
  end

  it "counts second ball as 30" do
    balls :p1, 2
    @game.score.should == [30, 0]
  end

  it "counts third ball as 40" do
    balls :p1, 3
    @game.score.should == [40, 0]
  end

  it "counts fourth ball as 50" do
    balls :p1, 4
    @game.score.should == [50, 0]
  end

  it "keeps track of both players" do
    balls :p2, 4
    @game.score.should == [0, 50]
  end

  it "counts advantage ball as 45" do
    create_advantage :p1
    @game.score.should == [45, 40]
  end

  it "counts game ball on advantage as 50" do
    create_advantage :p1
    balls :p1, 1
    @game.score.should == [50, 40]
  end

  it "counts p2's game ball on advantage as 50" do
    create_advantage :p2
    balls :p2, 1
    @game.score.should == [40, 50]
  end

  it "resets score to 40-40 after lost advantage" do
    create_advantage :p1
    balls :p2, 1
    @game.score.should == [40, 40]
  end

  def balls player, count
    count.times{ @game.ball player }
  end

  def create_advantage player
    balls :p1, 3
    balls :p2, 3
    balls player, 1
  end


end
