# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

def star(size)
  middle_idx = size / 2
  size.times do |idx|
    if idx == middle_idx
      puts ("*") * size
      next
    elsif idx > middle_idx
      inner_spaces = " " * (idx - middle_idx - 1)
    else
      inner_spaces = " " * (((size - 3) / 2) - idx)
    end
    star_row = ("*" + inner_spaces + "*" + inner_spaces + "*").center(size)
    puts idx == middle_idx ? ("*")*size : star_row
  end
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *