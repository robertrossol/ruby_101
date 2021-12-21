**What does the code output and/or return? Why? and What concept does the example demonstrate?**

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n| 
 n + 1
end
p new_array
```

- `line 2` assigns the `new_array` variable to the result of calling the `select` method on `arr` with a block of `n +1`. 
- the select method utilizes the truthiness of the return value of the block to determine which elements from original array are present in the resulting array. 
-  
- `line 5` outputs + returns the `new_array` object to the console
- `new_array` points to the same object as `arr`
- this example illustrates how the `select` method works compared to the `map` method, which was probably what should've been used as `n + 1` is not a very useful block to use with `select` since, at least in this and most cases, it always evaluates to true, and therefore simply returns the original array
- Example with good answer:

- ```ruby
  greeting = 'Hello'
  
  loop do
    greeting = 'Hi'
    break
  end
  
  puts greeting
  ```

- The local variable `greeting` is assigned to the String `'Hello'` on line 1. The `do..end` alongside the `loop` method invocation on lines 3 to 6 defines a block, within which `greeting` is reassigned to the String `Hi` on line 4. The `puts` method is called on line 8 with the variable `greeting` passed to it as an argument; since `greeting` is now assigned to `'Hi'`, this is what is output. This example demonstrates local variable scoping rules in Ruby; specifically the fact that a local variable initialized outside of a block is accessible inside the block.