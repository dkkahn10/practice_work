def word_count(string)
  split_string = string.split(' ')
  count = 0

  split_string.each do |word|
    count += 1
  end

  print "#{count} words"
end

puts word_count("He's walking down the road without a care in the whole WIDE world")
