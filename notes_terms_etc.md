- Ruby is pass by value...but the value is a reference

- ```ruby
  greeting = 'Hello'
  
  loop do
    greeting = 'Hi'
    break
  end
  
  puts greeting
  ```

- Important syntax/concept description: "The `do..end` alongside the `loop` method invocation on lines 3 to 6 defines a block, within which `greeting` is reassigned to the String `Hi` on line 4."

  - `loop` is a method (invocation)
  - `do..end` defines a block 