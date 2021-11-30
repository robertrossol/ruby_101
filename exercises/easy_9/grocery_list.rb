# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

def buy_fruit(list_arr)
  list_arr.map do |fruit, quantity|
    [fruit] * quantity
  end.flatten
end

# def buy_fruit(list)
#   expanded_list = []
#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end
#   expanded_list
# end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]