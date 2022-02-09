require './Mumbling.rb'

describe "Basic Tests" do
  it "returns A-Bb-Ccc-Dddd when given abcd" do
    expect(accum("abcd")).to eq("A-Bb-Ccc-Dddd")
  end
  it "returns R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy when given RqaEzty" do
    expect(accum("RqaEzty")).to eq("R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
  end
end