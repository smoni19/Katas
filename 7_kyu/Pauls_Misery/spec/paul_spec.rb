require './Pauls_Misery.rb'

describe "Basic Tests" do

  activities_one = ['eating']
  activities_two = [
    'Petes kata', 'Petes kata',
    'Petes kata', 'Petes kata',
    'Petes kata']
  activities_three = [
    'life', 'eating', 'eating',
    'eating', 'kata', 'kata',
    'kata', 'kata', 'kata',
    'Petes kata','Petes kata', 'Petes kata',
    'Petes kata', 'Petes kata', 'Petes kata']
  activities_four = activities_two + activities_three

  it "Returns 'Super happy!' when the Misery Score is below 40" do
    expect(paul(activities_one)).to eq('Super happy!')
  end
  it "Returns 'Happy!' when the Misery Score is below 70 and greater than or equal to 40" do
    expect(paul(activities_two)).to eq('Happy!')
  end
  it "Returns 'Sad!' when the Misery Score is below 70 and greater than or equal to 40" do
    expect(paul(activities_three)).to eq('Sad!')
  end
  it "Returns 'Sad!' when the Misery Score is below 70 and greater than or equal to 40" do
    expect(paul(activities_four)).to eq('Miserable!')
  end
end