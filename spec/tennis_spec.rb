require 'tennis'

describe Tennis do

  it "starts with 0 score and no winner" do
    game = Tennis.new
    game.score.should == [0, 0]
    game.winner.should == nil
  end

end
