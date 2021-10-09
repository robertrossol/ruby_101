# Q1 For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
10.times { |num| puts " " * num + "The Flintstones Rock!"}

# Q2 The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
#Why is this and what are two possible ways to fix this?
puts "the value of 40 + 2 is #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Q3 Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -=1
  end
  factors
end 

p factors(50)
p factors(0)
p factors(-10)

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"
