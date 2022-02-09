require './Fruit Machine.rb'

describe "Basic Tests" do
  it "should return 100 when there are 3 Wilds" do
    reel = ["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"]
    spin = [0,0,0]
    expect(fruit([reel,reel,reel], spin)).to eq 100
  end
  it "should return 0 when no items match" do
    reel1 = ["Wild", "Star", "Bell", "Shell", "Seven", "Cherry", "Bar", "King", "Queen", "Jack"]
    reel2 = ["Bar", "Wild", "Queen", "Bell", "King", "Seven", "Cherry", "Jack", "Star", "Shell"]
    reel3 = ["Bell", "King", "Wild", "Bar", "Seven", "Jack", "Shell", "Cherry", "Queen", "Star"]
    spin = [5,4,3]
    expect(fruit([reel1,reel2,reel3], spin)).to eq 0
  end
  it "should return 3 when there are 2 Kings" do
    reel1 = ["King", "Cherry", "Bar", "Jack", "Seven", "Queen", "Star", "Shell", "Bell", "Wild"]
    reel2 = ["Bell", "Seven", "Jack", "Queen", "Bar", "Star", "Shell", "Wild", "Cherry", "King"]
    reel3 = ["Wild", "King", "Queen", "Seven", "Star", "Bar", "Shell", "Cherry", "Jack", "Bell"]
    spin = [0,0,1]
    expect(fruit([reel1,reel2,reel3], spin)).to eq 3
  end
  it "should return 6 when there are 2 Kings and 1 Wild" do
    reel1 = ["King", "Jack", "Wild", "Bell", "Star", "Seven", "Queen", "Cherry", "Shell", "Bar"]
    reel2 = ["Star", "Bar", "Jack", "Seven", "Queen", "Wild", "King", "Bell", "Cherry", "Shell"]
    reel3 = ["King", "Bell", "Jack", "Shell", "Star", "Cherry", "Queen", "Bar", "Wild", "Seven"]
    spin = [0,5,0]
    expect(fruit([reel1,reel2,reel3],spin)).to eq 6
  end
end