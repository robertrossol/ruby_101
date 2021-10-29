#1 How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']
p arr.sort { |a, b| b.to_i <=> a.to_i }
p arr.sort_by { |string| string.to_i }.reverse!

#2 How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |book| book[:published] }

#3 For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][3]
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1][:third][0]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)

#4 For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2
hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2

#5 figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end
p total_male_age

#6 Given this previously seen family hash, print out the name, age and gender of each family member:
# like this: (Name) is a (age)-year-old (male or female).

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end

#7 Given this code, what would be the final values of a and b? Try to work this out without running the code.
a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5,8]]
arr[0] += 2
# arr = [4, [5,8]]
arr[1][0] -= a
# arr = [4, [3,8]]
p arr

#8 Using the each method, write some code to output all of the vowels from the strings.
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = "aeiou"
hsh.each do |_, words|
  words.each do |word|
    word.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

#9 Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

#10 Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
x = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

x.map do |hash|
  new_hash = {}
  hash.each do |key, value|
    new_hash[key] = value += 1
  end
  new_hash
end

# Using each_with_object
# x.each_with_object([]) do |hsh, arr|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   arr << incremented_hash
# end

#11 Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

x = arr.map do |sub_arr|
  sub_arr.select { |integer| integer % 3 == 0}
end
p x
#12 Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
x = arr.each_with_object({}) do |element, hash|
  hash[element[0]] = element[1] 
end
p x
# OR
# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end
# hsh

#13 Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
#Should look like this [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
# arr.sort do |a, b|
#   a.reject {|integer| integer % 2 == 0} <=> b.reject {|integer| integer % 2 == 0}
# end

x = arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
p x

#14 Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

x = hsh.map do |_, details|
  if details[:type] == 'fruit'
    details[:colors].map { |color| color.capitalize }
  elsif details[:type] == 'vegetable'
    details[:size].upcase
  end
end
p x

#15 Given this data structure write some code to return an array which contains only the hashes where all the integers are even.
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# x = arr.select do |hash|
#   hash.values.map do |num_arr|
#     num_arr.all? { |num| num.even? }
#   end.all? {|bool| bool }
#   # y.all? {|boolean| boolean }
# end

x = arr.select do |hash|
  hash.all? do |_,value|
    value.all? do |int|
      int.even?
    end
  end
end
p x

#16 Write a method that returns one UUID when called with no parameters.
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid
  uuid = ""

  characters = []
  # ('0'..'9').each {|num| characters << num}
  (0..9).each {|num| characters << num.to_s}
  ('a'..'f').each {|num| characters << num}

  segments = [8,4,4,4,12]

  segments.each_with_index do |size, index|
    size.times { uuid += characters.sample }
    uuid+='-' unless index >= segments.size - 1
  end

  uuid
end

p uuid

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
]

all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end


# all_orders = customer_orders.map do |customer|
#   {
#     customer_id: customer[:customer_id],
#     customer_name: customer[:customer_name]
#   }
# end

# customer_orders.each_with_index do |data, index|
#   order_value = data[:orders].reduce(0) do |total, order|
#     total + order[:order_value]
#   end

#   all_orders[index][:total_order_value] = order_value
# end