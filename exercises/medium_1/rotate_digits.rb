# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(arr)
  # result = arr.clone
  # result << arr [0]
  # result.drop(1)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, shift)
  num_arr = num.to_s.split('')
  # num_arr_left, num_arr_right = num_arr[0..(shift -1)], num_arr 
  num_arr_left, num_arr_right = num_arr.partition.with_index {|_num, idx| idx < (num_arr.size - shift)}
  result = num_arr_left + rotate_array(num_arr_right)
  result.join.to_i
end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
