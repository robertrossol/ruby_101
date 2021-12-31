
def second_last_cap(str)
  str = str.reverse
  str.chars.each_with_object([]) do |char, arr|
    arr << (arr.join.downcase.count(char) == 1 ? char.upcase : char)
  end.join.reverse
end

p second_last_cap("hello") == "heLlo"
p second_last_cap("hello there, world. it's me rob") == "HelLo TherE, wORld. it's me rob"