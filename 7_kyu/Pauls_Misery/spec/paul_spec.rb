require './Pauls_Misery.rb'

describe "Basic Tests" do
  it "Returns 'Super happy!' when the Misery Score is below 40" do
    expect(paul(['eating'])).to eq('Super happy!')
  end
  it "Returns 'Happy!' when the Misery Score is below 70 and greater than or equal to 40" do
    expect(paul(['Petes kata', 'Petes kata', 'Petes kata', 'Petes kata', 'Petes kata'])).to eq('Happy!')
  end
end