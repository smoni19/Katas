=begin
  ------------------------ Approach ------------------------ 
  1. convert string to array of numbers
  2. add digits of each number together, insert this number into weight array
  3. order supplied string based upon weight array
  4. return ordered string
=end


def order_weight(strng)
  numbers = strng.split(' ')
  weights = []
  numbers.map do | number |
    weight = 0
    number.to_s.chars.map do | digit |
      weight += digit.to_i
    end
    weights << weight
  end
end