# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse_og!(list)
  temp_list = list.clone
  size = list.length
  list.each_with_index do |el, index|
    list[index] = temp_list[(index+1)*-1]
  end
  list
end

def reverse!(list)
  index = 0
  opp_index = -1

  while index < list.size/2
    list[index], list[opp_index] = list[opp_index], list[index]
    index += 1
    opp_index -= 1
  end
  list
end


list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# def reverse(list)
#   list.each_with_object([]) { |el, arr| arr.unshift(el) }
#   # result_array = []
#   # array.reverse_each { |element| result_array << element } Array#reverse_each: iterates through the array from last element to first
#   # result_array
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true