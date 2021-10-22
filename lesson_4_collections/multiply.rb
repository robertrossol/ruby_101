
def multiply(numbers, multiplier)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * multiplier
    counter += 1
  end
  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]


def adv_multiply(numbers, multipliers)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * multipliers[counter]
    counter += 1
  end
  multiplied_numbers
end

p adv_multiply(my_numbers, [2, 5, 6, 9, 2, 3]) # => [2, 20, 18, 63, 4, 18]