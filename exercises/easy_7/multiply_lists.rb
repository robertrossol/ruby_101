# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list_2(arr1, arr2)
  arr1.each_with_index.with_object([]) do | (int, index), product_arr|
    product_arr << (int * arr2[index])
  end
end

def multiply_list(arr1, arr2)
  answer = []
  arr1.zip(arr2) { |int| answer << int[0] * int[1] } #OR |int1, int2| int1 * int2
  answer
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
