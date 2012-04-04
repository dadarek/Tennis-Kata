require 'tennis'

describe Tennis do

  it "keeps proper score" do
    assert_points_create_score 0, 0, [0, 0]
    assert_points_create_score 1, 0, [15, 0]
    assert_points_create_score 2, 0, [30, 0]
    assert_points_create_score 3, 0, [40, 0]
    assert_points_create_score 1, 1, [15, 15]
    assert_points_create_score 2, 2, [30, 30]
    assert_points_create_score 3, 3, [40, 40]
    assert_points_create_score 4, 3, [45, 40]
    assert_points_create_score 4, 4, [40, 40]
    assert_points_create_score 5, 4, [45, 40]
    assert_points_create_score 5, 5, [40, 40]
    assert_points_create_score 5, 6, [40, 45]
  end

  it "has no winner up to 3 points" do
    4.times { |p1|
      4.times { |p2|
        assert_points_create_winner p1, p2, nil
      }
    }
  end

  it "has winner after 4 points" do
    assert_points_create_winner 4, 0, :p1
    assert_points_create_winner 0, 4, :p2
  end

  it "has no winner on deuce" do
    assert_points_create_winner 4, 4, nil
  end

  def assert_points_create_winner p1, p2, expected_winner
    game = Tennis.new
    p1.times { game.point :p1 }
    p2.times { game.point :p2 }
    game.winner.should == expected_winner
  end

  def assert_points_create_score p1, p2, expected_score
    game = Tennis.new
    p1.times { game.point :p1 }
    p2.times { game.point :p2 }
    game.score.should == expected_score
  end

end
