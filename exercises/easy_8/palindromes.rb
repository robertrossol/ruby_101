# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

def leading_substrings(string)
  substrings = []
  substring = ''
  string = string.gsub(/[^A-Za-z0-9]/, '').downcase #removes whitespace and non-alphanumeric chars
  string.chars.each do |char|
    substrings << substring += char
  end
  substrings
end

def substrings(string)
  result = []
  0.upto(string.size - 1) do |idx|
    result.concat(leading_substrings(string[idx..-1]))
  end
  result
end

def is_palindrome?(string)
  # return false if string.size < 2
  # 0.upto((string.size / 2) -1) do |idx|
  #   return false if string[idx] != string[-(idx + 1)]
  # end
  # true
  string == string.reverse && string.size > 1
end

def palindromes(string)
  substrings(string).select do |sub_str|
    is_palindrome?(sub_str)
  end
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== 
# [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]