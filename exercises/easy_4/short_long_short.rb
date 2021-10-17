# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# input: two strings
# output: concatenated string
# rules:
#   explicit:
#     - the two strings are different lengths
#   Implicit:
#     - input strings shouldn't be mutated
#     - retrun new string

# 1. create result empty string
# 2. Find the lengths of the input strings
#   - check string.size
# 3. Identify the longest string  
#   - assign it to longer_string variable
#   - assign other string to shorter_string variable
# 4. add shorter_string + longer_string + shorter_string to result
# 5. return result


# def short_long_short(string_1, string_2)
#   result = ""
#   if string_1.size > string_2.size 
#     longer_string = string_1
#     shorter_string = string_2
#   else
#     longer_string = string_2
#     shorter_string = string_1
#   end
#   result += (shorter_string + longer_string + shorter_string)    
# end

def short_long_short(string_1, string_2)
  # string_1.size > string_2.size ? string_2 + string_1 + string_2 : string_1 + string_2 + string_1
  if string_1.size > string_2.size
    string_2 + string_1 + string_2
  else
    string_1 + string_2 + string_1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"