# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(arr)
  # result = []
  # result << arr[(arr.size.to_f / 2.0).ceil..-1]
  # result
  # this also works, but less pretty [arr[0, (arr.size / 2.0).ceil], arr[(arr.size.to_f / 2.0).ceil..-1]]
  # mostreadable:
  middle_index = (arr.size / 2.0).ceil
  left_array = arr.slice(0, middle_index)
  right_array = arr.slice(middle_index..-1) # or arr.slice(middle_index, arr.size - middle_index)
  [left_array, right_array]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]