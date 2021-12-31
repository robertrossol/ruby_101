
def common_chars(array)
  array = array.map { |word| word.dup }
  chars = array.shift.chars #or array.pop
  chars.select do |char|
    array.all? { |word| word.sub!(char, "")}
  end
end

arr = ["bella", "label", "roller"]

p common_chars(arr) == ["e", "l", "l"]
p arr
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eefffee", "ggrrrrr", "yyyzzz"]) == []