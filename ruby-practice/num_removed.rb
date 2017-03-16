# def num_removed(list)
#   this_sum = list.reduce(:+)
#   num = 0
#   sum = 0
#
#   while num <= 100
#     sum += num
#     num += 1
#   end
#
#   sum - this_sum
# end

def num_removed(list)
  full_list = (1..100).to_a
  missing_num = (full_list - list)[0]
end

array = (1..100).to_a
array.delete(47)
puts num_removed(array)
