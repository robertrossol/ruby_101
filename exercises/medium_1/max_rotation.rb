# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.
# 30056 0 0 5 6 + 3
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  num_arr = number.to_s.split('')
  num_arr.size.downto(2) do |num|
    number = rotate_rightmost_digits(number, num)
  end
  number
end

#Self Contained Solution:

# def max_rotation(number)
#   digits = number.to_s.chars
#   0.upto(digits.length - 2) do |index|
#     digits << digits.delete_at(index)
#   end
#   digits.join.to_i
# end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(30056)
# p rotate_array([3, 0, 0, 5, 6)

# 735291
# 3 52917 # lock 1
# 32 9175 # lock 2
# 321 759 # lock 3
# 3215 97 # lock 4
# 321579