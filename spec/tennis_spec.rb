require 'tennis'

describe Tennis do
  it "starts with 0 points" do
    x = Tennis.new
    x.p1_score.should == 0
    x.p2_score.should == 0
  end
end
