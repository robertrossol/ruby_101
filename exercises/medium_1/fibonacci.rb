#recursive
def fibonacci_r(n)
  return 1 if n <= 2
  fibonacci_r(n - 1) + fibonacci_r(n - 2)
end

# p fibonacci_r(1) == 1
# p fibonacci_r(2) == 1
# p fibonacci_r(3) == 2
# p fibonacci_r(4) == 3
p fibonacci_r(5) == 5
p fibonacci_r(12) == 144
p fibonacci_r(20) == 6765

def fibonacci(n)
  return 1 if n <= 2
  num1 = 1 
  num2 = 1
  (n - 2).times do
    num1, num2 = num2, (num1 + num2)
  end
  num2
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

def fibonacci_last(n)
  return 1 if n <= 2
  num1 = 1
  num2 = 1
  (n - 2).times do
    num1, num2 = num2, (num1 + num2) % 10
  end
  num2
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4