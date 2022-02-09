=begin
  ------------------------ Approach ------------------------ 
  Get element of each reel in reels array at corresponding spins index
  Count occurence of each item
  Calculate score based upon scores hash:
    if 2 of the same, return score in scores hash
    if 3 of the same, multiply score in scores hash by 10
    if two of the same plus one Wild, multiply score in scores hash by 2
=end

def fruit(reels, spins)
  scores = {
    "Wild" => 10,
    "Star" => 9,
    "Bell" => 8,
    "Shell" => 7,
    "Seven" => 6,
    "Cherry" => 5,
    "Bar" => 4,
    "King" => 3,
    "Queen" => 2,
    "Jack" => 1
  }

  items = []
  item = ''
  item_tally = []
  score = 0

  reels.each.with_index do | reel, index |
    item = reels[index][spins[index]]
    items.push(item)
  end
  
  items.uniq.map { | item | item_tally << [item, items.count(item)] }

  item_tally.map do | item, tally |
    tally == 2 ? score = scores[item] : tally == 3 ? score = scores[item] * 10 : 0
  end
  
  items.each do | item |
    scores = score * 2 if item == "Wild"
  end
  
  score = score * 2 if item_tally.include?(["Wild", 1])
  return score
end