def include_word?(str, word)
  str_array = str.split(' ')
  word_array = [word]

  str_array - word_array != str_array
end

puts include_word?("Hi, my name is Dustin", "dog")
puts "-----"
puts include_word?("Hi, my name is Dustin", "is")
