require 'tennis'

describe Tennis do
  before :each do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    assert_score [0, 0]
  end

  it "remembers p1 score" do
    @game.point :p1
    assert_score [15, 0]
  end

  it "remembers p2 score" do
    @game.point :p2
    assert_score [0, 15]
  end

  def assert_score expected
    @game.score.should == expected
  end
end
