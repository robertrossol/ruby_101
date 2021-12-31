# Problem: find the index in an array where the sum of the integers to the right equals the sum of the integers to the left. If no index meets this condition, return -1

# input: array of integers
# output: integer representing the index (or -1)
#data structure: Array
# Algorithm:
# - iterate from index 0 to input_arr.size - 1
#   - check the sum of the sub array from index + 1 to input_arr.size - 1
#     -reduce(:+)
#   - check the sum of the sub array from 0 to Index (0 if index 0)
#   - if sums are equal, return Index
#   - if none are equal return -1



def find_even_index(arr)
  end_index = arr.size - 1
  (0..end_index).each do |mid_point|
    left_sum = mid_point == 0 ? 0 : arr[0..(mid_point - 1)].reduce(:+)
    right_sum = mid_point == end_index ? 0 : arr[(mid_point + 1)..end_index].reduce(:+)
    return mid_point if left_sum == right_sum
  end
  return -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100, 50, -51, 1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3