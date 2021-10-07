# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
input = ""
operator = ""


puts ">> Please enter an integer greater than 0:"
input = gets.chomp.to_i
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operator = gets.chomp
  if !["s","p"].include? operator
    puts "oops, not a valid operator" 
  else
    break
  end
end

integer_range = (1..input) # or 1.upto(input) 
if operator == "s"
  operation = "sum"
  total = integer_range.reduce(:+)
elsif operator == "p"
  operation = "product"
  total = integer_range.reduce(:*)
else
  puts "oops, not a valid operator"
end
puts "The #{operation} of the integers between 1 and #{input} is #{total}"