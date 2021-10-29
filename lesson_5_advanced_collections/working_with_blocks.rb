# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end
# 1
# 3
# => [nil, nil]

# Line	Action	Object	Side Effect	Return Value	Is Return Value Used?
# 1	method call (map)	The outer array	None	New array [nil, nil]	No, but shown on line 6
# 1-3	block execution	Each sub-array	None	nil	Yes, used by map for transformation
# 2	method call (first)	Each sub-array	None	Element at index 0 of sub-array	Yes, used by puts
# 2	method call (puts)	Element at index 0 of each sub-array	Outputs a string representation of an Integer	nil	Yes, used to determine return value of block



[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# Line |	Action  |	Object  |	 Side Effect  | 	Return Value  | 	Is Return Value Used?
# 1 | method call(map) | outer array | None | [1, 3] | No
# 1-4 | block execution | each sub-array | None | element at index 0 of sub-array | Yes, used by map for transformation
# 2 | method call(first) | each sub-array | None | element at index 0 of sub-array |  yes, used by puts
# 2 | method call(puts) | Element at index 0 of sub-array | prints string of element |  nil | No
# 3 | method call(first) | each sub-array | None | element at index 0 of sub-array |  yes, used to determine return value

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end