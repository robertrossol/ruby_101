
#Problem: Return the length of the longest palindrome within the input string
# input: string
# output: is integer (length of longest plaindrome substring)

#Algorithm:
# -break the string into an array of chars
# -create a palindrome substrings empty array
  # -ORcreate longest_palindrome variable, set to 0
# -iterate through the input string chars and if the next and previous chars are equal, keep checking until they're not
  #- append that substring to the palindrome array.
    # -OR set longest_palindrome variable to length of substring

# def longest_palindrome(str)
#   str = str.delete(" ").chars
#   return 1 if str.size == 1 
#   longest_palindrome = 0
#   palindromes = []
#   ((str.size-1).downto(0)).each do |num|
#     (str.size - num).downto(0).each do |num2|
#       return str[num2..num].size if str[num2..num] == str[num2..num].reverse
#       num -= 1
#     end
#   end
# end

def longest_palindrome(string)
  substrings = find_all_substrings(string)
  palindromes(substrings).max {|a, b| a.size <=> b.size}
end

def find_all_substrings(string)
  results = []
  array = string.chars
  0.upto(array.length - 1) do |start_idx|
    start_idx.upto(array.length - 1) do |end_idx|
      substring = array[start_idx..end_idx].join
      results << substring #if substring == substring.reverse
    end
  end
  results
  # results.sort_by { |sub_str| sub_str.size }.last.size
  # results.map { |sub_str| sub_str.size }.sort.last
end

def palindromes(arr)
  arr.select { |str| str == str.reverse }
end

p longest_palindrome ('abcdcbd')
# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baablkj12345432133d") == 9