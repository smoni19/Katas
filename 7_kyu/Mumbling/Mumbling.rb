def accum(string)
  output = "-"
  string.each_char.with_index { |char, index|
    index += 1
    index.times { output += char.downcase }
    output += '-'
  }
  output.gsub!(/-([a-z])/){'-'+$1.upcase}.chop!.slice!(0)
  return output
end