def paul(x)
  paulMiseryScore = 0
  values = {
    "kata" => 5,
    "Petes kata" => 10,
    "life" => 0,
    "eating" => 1
  }
  x.each do |activity|
    paulMiseryScore += values[activity].to_i
  end
  p paulMiseryScore
end