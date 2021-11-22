# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.


def triangle(size, orientation = 'TR')
  (1..size).each do |i|
    case orientation
    when 'BR'
      # space, stars = ' ' * (size - i), "*" * i
      left, right = ' ' * (size - i), "*" * i
    when 'BL'
      right, left = ' ' * (size - i), "*" * i
    when 'TR'
      left, right = ' ' * (i - 1), "*" * (size - (i - 1))
    when 'TL'
      right, left = ' ' * (i - 1), "*" * (size - (i - 1))
    end

    puts left + right
  end
end

# def triangle(n, orientation='BR')
#   rows = []

#   1.upto(n) do |row_number|
#     row = build_row(row_number, n)
#     case orientation
#     when 'BR' then rows.push(row)
#     when 'TR' then rows.unshift(row)
#     when 'BL' then rows.push(row.reverse)
#     when 'TL' then rows.unshift(row.reverse)
#     end
#   end

#   puts rows
# end

# def build_row(row_number, row_length)
#   ' ' * (row_length - row_number) + '*' * row_number
# end




triangle(5, 'BR')
triangle(5, 'BL')
triangle(5, 'TR')
triangle(5, 'TL')
#     *
#    **
#   ***
#  ****
# *****

triangle(9, 'BR')
triangle(9, 'BL')
triangle(9, 'TR')
triangle(9, 'TL')
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********