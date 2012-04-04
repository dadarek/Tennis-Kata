require 'tennis'

describe Tennis do
  it "starts with 0 points" do
    x = Tennis.new
    x.score(:p1).should == 0
    x.score(:p2).should == 0
  end

  it "adss up points" do
    x = Tennis.new
    x.point(:p1)

    x.score(:p1).should == 15
  end

end
