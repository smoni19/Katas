require './Weight for weight.rb'

describe "Basic Tests" do
  it "returns 2000 103 123 4444 99 when given 103 123 4444 99 2000" do
    expect(order_weight("103 123 4444 99 2000")).to eq "2000 103 123 4444 99"
  end
end