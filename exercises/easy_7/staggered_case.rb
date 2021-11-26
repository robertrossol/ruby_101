# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# def staggered_case(string)
#   uppercase, lowercase = string.chars.partition.with_index {|_, index| index.even? }
#   uppercase = uppercase.join.upcase.split('')
#   lowercase = lowercase.join.downcase.split('')
#   uppercase.zip(lowercase).flatten.join('')
# end

# def staggered_case(string, start_with='uppercase')
#   string.chars.map.with_index do |char, index|
#     if start_with == 'uppercase'
#       index.even? ? char.upcase : char.downcase
#     elsif start_with == 'lowercase'
#       index.odd? ? char.upcase : char.downcase
#     end
#     #OR (start_with == 'uppercase' ? index % 2 == 0 : index % 2 != 0) ? char.upcase : char.downcase
#   end.join('')
# end

def staggered_case(string, start_with='uppercase')
  string.chars.map.with_index do |char, index|
    (start_with == 'uppercase' ? index.even? : index.odd?) ? char.upcase : char.downcase
  end.join('')
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string, count_non_alpha = false)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i || count_non_alpha
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
