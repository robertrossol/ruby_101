# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.
require 'pry'
# You may assume that neither argument is an empty Array.

def multiply_all_pairs_2(arr1, arr2)
  product_arr = []
  arr1.each do |int|
    arr2.each do |int_2|
      product_arr << int * int_2
    end
  end
  product_arr.sort
end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |arr_pair| arr_pair.reduce(:*) }.sort #OR .map {|num1, num2| num1 * num2}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
