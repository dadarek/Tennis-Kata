require 'tennis'

describe Tennis do

  it "starts with no score" do
    game = Tennis.new
    game.score.should == [0, 0]
  end

end
