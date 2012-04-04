require 'tennis'

describe Tennis do
  before :each do
    @game = Tennis.new
  end

  it "starts with 0 points" do
    assert_score 0
  end

  it "keeps track of first point" do
    score_n_times 1
    assert_score 15
  end

  it "keeps track of second point" do
    score_n_times 2
    assert_score 30
  end

  it "keeps track of third point" do
    score_n_times 3
    assert_score 40
  end

  def score_n_times n
    n.times { @game.point :p1 }
  end

  def assert_score expected
    @game.score.should == expected
  end
end
