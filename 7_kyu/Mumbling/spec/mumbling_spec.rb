require './Mumbling.rb'

describe "Basic Tests" do
  it "returns A-Bb-Ccc-Dddd when given abcd" do
    expect(accum("abcd")).to eq("A-Bb-Ccc-Dddd")
  end
end