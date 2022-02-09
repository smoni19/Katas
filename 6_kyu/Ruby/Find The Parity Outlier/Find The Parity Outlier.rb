def find_outlier(integers)
  evens = []
  odds = []
  integers.each { | integer |
    integer.even? ? evens.push(integer) : odds.push(integer)
  }
  evens.size > odds.size ? odds[0] : evens[0]
end