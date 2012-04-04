require 'tennis'

describe Tennis do
  before :each do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    assert_score [0, 0]
  end

  it "keeps track of first point" do
    @game.point :p1
    assert_score [15, 0]
  end

  it "keeps track of second point" do
    2.times { @game.point :p1 }
    assert_score [30, 0]
  end

  it "keeps track of third point" do
    3.times { @game.point :p1 }
    assert_score [40, 0]
  end

  it "keeps track of player 2 points" do
    @game.point :p2
    assert_score [0, 15]
  end

  it "keeps track of both player points" do
    point_n_times 1, 2
    assert_score [15, 30]
  end

  it "declares p1 as winner after 4 points" do
    4.times { @game.point :p1 }
    @game.winner.should == :p1
  end

  it "declares p2 as winner after 4 points" do
    4.times { @game.point :p2 }
    @game.winner.should == :p2
  end

  it "declares no winner if p1 has 3 points" do
    point_n_times 4, 3
    @game.winner.should == nil
  end

  it "declares no winner if p2 has 3 points" do
    point_n_times 3, 4
    @game.winner.should == nil
  end

  def point_n_times p1, p2
    p1.times { @game.point :p1 }
    p2.times { @game.point :p2 }
  end

  def assert_score expected
    @game.score.should == expected
  end
end
