def paul(x)
  paulMiseryScore = 0
  values = {
    "kata" => 5,
    "Petes kata" => 10,
    "life" => 0,
    "eating" => 1
  }
  x.each do |activity|
    paulMiseryScore += values[activity]
  end
  get_mood(paulMiseryScore)
end

def get_mood(paulMiseryScore)
  case paulMiseryScore
  when 0..39
    return 'Super happy!'
  when 40..69
    return 'Happy!'
  when 70..99
    return 'Sad!'
  else
    return 'Miserable!'
  end
end