# def stringy(num)
#   answer = []
#   while answer.length < num
#     answer << "1"
#     break if answer.length >= num
#     answer << "0"
#   end
#   answer.join
# end

def stringy(num, starts_with = 1)
  numbers = []

  num.times do |index|
    # numbers << (index.even? ? 1 : 0)
    number = index.even? ? starts_with : (starts_with - 1).abs()
    numbers << number
  end
  numbers.join
end
puts stringy(6, 0)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'