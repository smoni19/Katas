def accum(string)
  output = ""
  string.each_char.with_index { |char, index|
    index += 1
    index.times { output += char }
    output += '-'
  }
  p output
end