# STRING_DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

# def integer_to_string(int)
#   return "0" if int == 0
#   digits = []
#   while int > 0
#     digits << int % 10
#     int = int / 10
#   end
#   digits.reverse.map { |digit| DIGITS[digit]}.reduce(:+)
# end
DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# def signed_integer_to_string(signed_int)
#   sign = ''
#   if signed_int < 0
#     sign = "-"
#     signed_int *= -1
#   elsif signed_int > 0
#     sign = "+"
#   else
#     sign = ''
#   end
#   integer_to_string(signed_int).prepend(sign)
# end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'