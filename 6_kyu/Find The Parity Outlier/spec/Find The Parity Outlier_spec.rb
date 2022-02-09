require './Find The Parity Outlier.rb'

describe "Basic Tests" do
  it "returns A-Bb-Ccc-Dddd when given abcd" do
    expect(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])).to eq(11)
  end
end