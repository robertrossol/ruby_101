# def oddities(array)
#   array.select.with_index do |value, index|
#     (index + 1).odd?
#   end
# end

def oddities(array)
  odds = []
  index = array.size
  while index > 0
    odds << array[index - 1] if index.odd?
    index -= 1
  end
  odds.reverse
end

p oddities([2, 3, 4, 5, 6])
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def'])
p oddities(['abc', 'def']) == ['abc']
p oddities([123])
p oddities([123]) == [123]
p oddities([])
p oddities([]) == []