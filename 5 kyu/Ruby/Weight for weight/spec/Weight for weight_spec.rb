require './Weight for weight.rb'

describe "Basic Tests" do
  it "returns 2000 103 123 4444 99 when given 103 123 4444 99 2000" do
    expect(order_weight("103 123 4444 99 2000")).to eq "2000 103 123 4444 99"
  end

  it "returns 11 11 2000 10003 22 123 1234000 44444444 9999 when given 2000 10003 1234000 44444444 9999 11 11 22 123" do
    expect(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")).to eq "11 11 2000 10003 22 123 1234000 44444444 9999"
  end
end