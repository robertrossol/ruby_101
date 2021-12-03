# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

#-create n rows, of size n (n is odd)
#-line = number of stars.center(n)
#-number of stars starts at 1
# -number of stars += 2 until == n
#   -flip a switch
# -then number of stars -= 2

def diamond(size)
  stars = 1
  going_up = true
  size.times do
    puts ("*" * stars).center(size)
    going_up = !going_up if stars == size
    going_up ? stars += 2 : stars -= 2
  end
end

def diamond_outline(size)
  stars_row = 1
  going_up = true
  size.times do
    internal_spaces = stars_row - 2
    puts internal_spaces > 0 ? ("*" + " " * internal_spaces + "*").center(size) : "*".center(size)
    going_up = !going_up if stars_row == size
    going_up ? stars_row += 2 : stars_row -= 2
  end
end


diamond(7)
diamond_outline(7)
# diamond(1)

# *


# diamond(3)

#  *
# ***
#  *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *