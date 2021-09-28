def digit_list(number)
  number.to_s.split('').map! {|num| num.to_i}
  # number.to_s.chars.map(&:to_i)
end

# map(&:to_i) = something.map {|thing| thing.to_i }

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true