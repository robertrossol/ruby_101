# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to 2.

def find_fibonacci_index_by_length(length)
  index = 3
  last_two = [1, 2]
  until last_two.last.to_s.size == length
    index += 1
    last_two << (last_two[-1] + last_two[-2])
    last_two.delete_at(0)
  end
  index
end

#similar, efficient syntax

def find_fibonacci_index_by_length_2(length)
  index = 3
  a = 1
  b = 2

  while b.to_s.length < length
    a, b = b, a + b #like the dual reassignment :)
    index += 1
  end
  index
end


p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847