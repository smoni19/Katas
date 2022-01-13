require './Pauls_Misery.rb'

describe "Basic Tests" do
  it "Simple Cases" do
    expect(paul(['eating'])).to eq('Super happy!')
  end
end