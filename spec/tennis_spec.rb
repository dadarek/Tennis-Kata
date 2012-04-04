require 'tennis'

describe Tennis do

  before :each do
    @game = Tennis.new
  end

  it "starts with 0 score" do
    assert_points_create_score 0, 0, [0, 0]
  end

  it "treats first point as 15" do
    assert_points_create_score 1, 1, [15, 15]
  end

  it "treats second point as 30" do
    assert_points_create_score 2, 2, [30, 30]
  end

  it "treats third point as 40" do
    assert_points_create_score 3, 3, [40, 40]
  end

  it "treats fourth point as 45" do
    assert_points_create_score 4, 3, [45, 40]
  end

  def assert_points_create_score p1, p2, expected_score
    game = Tennis.new
    p1.times { game.point :p1 }
    p2.times { game.point :p2 }
    game.score.should == expected_score
  end

end
