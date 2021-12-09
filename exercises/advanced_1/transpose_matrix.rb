
def transpose(matrix)
  new_matrix = []
  matrix.each { |sub_arr| new_matrix << sub_arr.dup }
  matrix.map.with_object(new_matrix).with_index do |(sub_arr, new_matrix), arr_index|
    sub_arr.each_with_index do |el, index|
      new_matrix[index][arr_index] = el
    end
  end
end

# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# def transpose(matrix)
#   new_matrix = []
#   matrix.size.times { new_matrix << [] }
#   matrix.each.with_index do |sub_arr, arr_index|
#     sub_arr.each_with_index do |el, index|
#       new_matrix[index][arr_index] = el
#     end
#   end
#   new_matrix
# end

# def transpose!(matrix)
#   # new_matrix = []
#   # matrix.each { |sub_arr| new_matrix << sub_arr.dup }
#   matrix.map.with_object(matrix).with_index do |(sub_arr, altered_matrix), arr_index|
#     sub_arr.map.with_index do |_el, index|
#       altered_matrix[arr_index][index], altered_matrix[index][arr_index] = altered_matrix[index][arr_index], altered_matrix[arr_index][index]
#     end/
#   end
# end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
# new_matrix = [
#   [1, 4, 3], 
#   [5, 7, 9], 
#   [8, 2, 6]
# ]


new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# transpose!(matrix)

# p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]


# def transpose_any(matrix)
#   new_matrix = []
#   # matrix.each { |sub_arr| new_matrix << sub_arr.dup }
#   matrix.map.with_object(new_matrix).with_index do |(sub_arr, new_matrix), arr_index|
#     sub_arr.each_with_index do |el, index|
#       new_matrix[index][arr_index] = el
#     end
#   end
# end

def transpose_any(matrix)
    result = []
    (0...(matrix[0].size)).each do |column_index|
      new_row = (0...(matrix.size)).map { |row_index| matrix[row_index][column_index] }
      result << new_row
    end
    result
  end

p transpose_any([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]