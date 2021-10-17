DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

HEX_DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
              'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15,
              'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15}

OPERATOR = {'+' => 1, '-' => -1}



# def string_to_integer(string_num)
#   chars = string_num.split('')
#   int_digits = chars.map{|char| DIGITS[char]}
#   int_digits.map.with_index {|int, index| int * (10 ** (chars.size - index -1))}.sum
# end

def string_to_integer(int_string)
  digits = int_string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit}
    #10 * 0 + 4 = 0 + 4 = 4
    #10 * 4 + 3 = 40 + 3 = 43
    #10 * 43 + 2 = 430 + 2 = 432
    #10 * 432 + 1 = 4320 + 1 = 4321
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


# multiplying the hex number by 16. Then, you raise it to a power of 0 and increase that power by 1 each time according to the hexadecimal number equivalent.
# 9 = 9 * (16 ^ 0) = 9

def hexadecimal_to_integer(hex_string)
  digits = hex_string.chars.map { |char| HEX_DIGITS[char] }
  hex_values = []
  digits.reverse.each_with_index { |digit, index| hex_values << digit * (16 ** index) }
  hex_values.sum
end

p hexadecimal_to_integer('4D9f') == 19871

# def string_to_signed_integer(signed_int_string)
#   if signed_int_string[0] == '-'
#     -string_to_integer(signed_int_string[1..-1])
#   elsif signed_int_string[0] == '+'
#     string_to_integer(signed_int_string[1..-1])
#   else
#     string_to_integer(signed_int_string)
#   end
# end

#case statements a little cleaner
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

def string_to_signed_integer(string)
  modifier = 1
  modifier = -1 if string[0] == '-'
  string = string[1..-1] if string[0] == '-' || string[0] == '+'
  modifier * string_to_integer(string)
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
