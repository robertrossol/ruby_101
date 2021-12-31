# -Given a positive Integer
# -Break down into the available digits of the Integer
# -Determine if they can be rearranged to create a bigger Int
#   -If not, return -1
# -Return next-bigger int

#Approach: Split the integer into digits by converting it to a string and using String#split method. If the digits are already sorted in descending order, return -1, otherwise compare last digit, with the next to last and swap them if last digit is larger, add result to  results array, if not, compare with the preceeding char.

#1) Write a method definition that takes an integer argument
#2) Initialize a local variable to the value of the split method called on the result of to_s called on the integer argument
#3) Initialize a variable called results to an empty array

#)Approach 2: Iterate from the input integer up to the maximum integer possible with the initial digits. Break on the iteration where the iterator contains all the original digits. If no iterator meets the condition, return -1

#1) Write a method definition that takes an integer argument
#2) Initialize a local variable called digits to the value of the split method called on the result of to_s called on the integer argument (int.to_s.split("") or int.to_s.chars)
#3) Initialize a local variable called max_num to the value of digits.sort.reverse.join.to_i.
#4) create a loop that iterates from int + 1..max_num
#5) for each iteration, call helper method compare_digits on the iterator.
#6) when true, return iterator
#7) If none are true, return -1

def next_bigger_num(num)
  digits = num.to_s.chars
  max_num = digits.sort.reverse.join.to_i
  (num + 1..max_num).each do |num|
    return num if num.to_s.chars.sort == digits.sort
  end
  -1
end

p next_bigger_num(9)
p next_bigger_num(12)
p next_bigger_num(513)
p next_bigger_num(2017)
p next_bigger_num(111)
p next_bigger_num(531)
p next_bigger_num(123456789)

