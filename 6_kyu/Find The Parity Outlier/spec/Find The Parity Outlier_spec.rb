require './Find The Parity Outlier.rb'

describe "Basic Tests" do
  it "returns 11 when given [2, 4, 0, 100, 4, 11, 2602, 36]" do
    expect(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])).to eq(11)
  end
  it "returns 160 when given [160, 3, 1719, 19, 11, 13, -21]" do
    expect(find_outlier([160, 3, 1719, 19, 11, 13, -21])).to eq(160)
  end
end