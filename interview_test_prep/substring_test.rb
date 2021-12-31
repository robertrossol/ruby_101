# Problem: Given 2 strings, return true if there is a substring (2+chars) that appears in both strings (case insensitive).

# input: two string
# output: boolean

# Data - Strings, Array

# Algorithm

# -find shorter string
# -create array of all possible substrings
# -check if other string contains any of the substrings

def substring_test(*args)
  substrings = []
  # short_str, other_str = args.max_by{|str| str.size}
  sorted_args = args.sort_by { |str| str.size }
  short_str, other_str = sorted_args[0].downcase, sorted_args[1].downcase
  (0...short_str.size).each do |index1|
    ((index1 + 1)...short_str.size).each do |index2|
      substrings << short_str[index1..index2]
    end
  end
  substrings.any? { |sub_str| other_str.include?(sub_str)}
end

# Examples:
p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something")  == false
p substring_test('BANANA', 'banana') == true
p substring_test("test", 'lllt') == false
p substring_test("", "") == false
p substring_test("1234567", "541265") == true
p substring_test("supercalifragilisticexpialidocious", 'Soundofitisatrocious') == true


# Problem: Determine if str2 can be created from the chars in str1. 
# input: two lowercase strings
# output: boolean: true if str1 contains all the chars in str2

#Algorithm: 
# - Iterate over str2 and check/remove each char from str1. 
#  - If char isn't present in str1, return false

def scramble(str1, str2)
  # str1 = str1.chars
  # str2.chars.all? do |char|
  #   str1.index(char) ? str1.delete_at(str1.index(char)) : false
  # end
  str2.chars.uniq.each do |char|
    return false if str2.count(char) > str1.count(char)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
