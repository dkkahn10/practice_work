# function that takes two integers representing a range
# the function should return all numbers that follow this convention
#
# taking two numbers
# create array that includes range of all number (between int1 int2)
# iterate through the array
# split numbers into separate mini-array
# iterate over each number raising to the power of each individual index plus one

def sum_dig_pow(a, b) #1 10
  new_array = (a..b).to_a
  special_array = []

  new_array.each do |num|
    ind_array = num.to_s.split('')
    sum = 0
    number = num.to_i

    ind_array.each_with_index do |int, index|
      sum += int.to_i ** (index + 1)
    end

    if sum == number
      special_array.push(number)
    end

  end

  special_array
end
