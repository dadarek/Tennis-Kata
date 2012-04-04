require 'tennis'

describe Tennis do
  before :each do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    assert_score 0
  end

  it "keeps track of first point" do
    @game.point :p1
    assert_score 15
  end

  it "keeps track of second point" do
    2.times { @game.point :p1 }
    assert_score 30
  end

  it "keeps track of third point" do
    3.times { @game.point :p1 }
    assert_score 40
  end

  def assert_score expected
    @game.score.should == expected
  end
end
