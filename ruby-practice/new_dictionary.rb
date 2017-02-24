def to_string(list)
  string = ''

  list.each do |item|
    if item == "\n"
      break
    else
      string += item;
    end
  end

  string
end

def print_pattern_helper(string, buff, i, j, n)
  if i == n
    buff[j] = "\n"
    puts to_string(buff)
    return
  end

  buff[j] = string[i]
  print_pattern_helper(string, buff, i+1, j+1, n)

  buff[j] = ' '
  buff[j+1] = string[i]

  print_pattern_helper(string, buff, i+1, j+2, n)
end

def print_pattern(string)
  n = string.length
  buff = [0] * (2 * n)
  buff[0] = string[0]
  print_pattern_helper(string, buff, 1, 1, n)
end

string = 'ABCD'
puts print_pattern(string)
