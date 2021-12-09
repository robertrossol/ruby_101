
def rotate90(matrix)
  result = []
  rows = matrix[0].size
  columns = matrix.size

  (0...(matrix[0].size)).each do |column_index|
    # new_row = ((matrix.size-1).downto(0)).map { |row_index| matrix[row_index][column_index] }
    new_row = (0...(matrix.size)).map { |row_index| matrix[row_index][column_index] }.reverse
    result << new_row
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
# [1][1], [0][1] => [1][0], [1][1]
# [1][2], [0][2] => [2][0], [2][1]
matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2