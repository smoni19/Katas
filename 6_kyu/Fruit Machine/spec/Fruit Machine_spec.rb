require './Fruit Machine.rb'

describe "Basic Tests" do
  it "should return 0 when no items match" do
    reel1 = ["Wild", "Star", "Bell", "Shell", "Seven", "Cherry", "Bar", "King", "Queen", "Jack"]
    reel2 = ["Bar", "Wild", "Queen", "Bell", "King", "Seven", "Cherry", "Jack", "Star", "Shell"]
    reel3 = ["Bell", "King", "Wild", "Bar", "Seven", "Jack", "Shell", "Cherry", "Queen", "Star"]
    spin = [5,4,3]
    expect(fruit([reel1,reel2,reel3], spin)).to eq 0
  end
end