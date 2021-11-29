# Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
# -print number unless...
# -divisible by 3, print "Fizz"
# -divisible by 5, print "Buzz",
# -divisible by 3 and 5, print "FizzBuzz"

def fizzbuzz(start_num, end_num)
  result_arr = []
  start_num.upto(end_num) do |num|
    result = ''
    result += 'Fizz' if num % 3 == 0
    result += 'Buzz' if num % 5 == 0
    result_arr << (result.empty? ? num : result)
  end
  puts result_arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
