vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(array_of_things)
  count = {}
  # array_of_things.each do |thing|
  #   if count[thing]
  #     count[thing] += 1
  #   else
  #     count[thing] = 1
  #   end
  # end

  array_of_things.uniq.each do |thing|
    count[thing] = array_of_things.count(thing)
  end
  count
end

puts count_occurences(vehicles)


# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
