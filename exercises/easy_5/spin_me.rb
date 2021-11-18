# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?


def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# The returned string object will be different than the argument passed in. Although `reverse!` reverses a string in place, and `each` returns the original passed in object, the very first action taken on the str argument is `split`. `split` takes the original string and splits it into an array of strings, which is a completely new object. Even str.split.join returns a new object, albeit a string with the same value as the original