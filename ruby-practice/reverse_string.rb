def reverse_string(str)
  array = str.split('')

  x = 0
  y = array.length - 1

  while x < y
    item1 = array[x]
    item2 = array[y]

    array[x] = item2
    array[y] = item1

    x += 1
    y -= 1
  end

  array.join('')
end

puts reverse_string("willow")
