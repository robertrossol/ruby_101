# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.


#OG solution
def crunch_OG(string)
  final_chars = []
  string.chars.select do |char|
    final_chars << char
    char != final_chars[-2]
  end.join
end

#Better, similar solution

def crunch(string)
  string.chars.each_with_object('') do |char, solution_string|
    solution_string << char unless char == solution_string[-1]
  end
end

#OR gsub regular expression solution

def crunch_2(string)
  string.gsub(/(.)\1+/, '\1')
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''