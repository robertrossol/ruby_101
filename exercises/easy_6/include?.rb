# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

def include?(arr, val)
  !!arr.find_index {|el| el == val}
  #arr.find doesn't work for 'nil' values because it returns the found element (and nil if not found), and if that element is nil it can't distinguish the difference between the element and the 'not found' result
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false