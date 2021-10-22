
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(collection)
  fruits = {}
  counter = 0
  keys = collection.keys
  loop do
    break if counter == collection.size
    
    key = keys[counter]
    value = collection[key]
    if value == 'Fruit'
      fruits[key] = value 
    end
    counter += 1
  end
  fruits
end

p select_fruit(produce)