# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# :equilateral All 3 sides are of equal length
# :isosceles 2 sides are of equal length, while the 3rd is different
# :scalene All 3 sides are of different length

#- (a + b) > c
#- all sides must have lengths greater than 0

def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  if a == 0 || (a+b) < c
    :invalid
  elsif a == b && b == c
    :equilateral
  elsif a == b || b == c
    :isosceles
  else
    :scalene
  end
end

#Nice use of Array#uniq method
# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]

#   return :invalid if sides.sort.take(2).sum <= sides.max

#   case sides.uniq.length
#   when 1 then :equilateral
#   when 2 then :isosceles
#   when 3 then :scalene
#   end
# end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
