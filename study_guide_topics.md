- local variable scope, especially how local variables interact with method invocations with blocks and method definitions

  - local variables exist in the scope they are created/assigned
    - if they are created in an outer scope, they can be accessed inside loops and blocks, but not vise versa
  - Methods only have access to the local variables that are passed in as arguments
    - If a variable is created/assigned within a method definition, it will not be accessible outside of the method

- mutating vs non-mutating methods, pass-by-reference vs pass-by-value

  - a variable passed into a method is essentially assigning a variable within the method scope to point to the same object that the outer variable. Therefore...
    - if a passed in argument is reassinged within a method definition, the outer variable is unaffected (as they are pointing to two separate objects). However...
    - If a passed in argument is mutated, the outer variable's value will change as well since both variables are pointing to the same object and any mutation will be visible in any variable that references that object. 

- working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). Review the two lessons on these topics thoroughly.

  - Array: an index-based collection of otherwise unrelated objects
    - due to it's nature, order is important and preserved
    - Array values can be essentially anything: strings, integers, arrays (nested arrays), hashes, etc
    - Assignment: array[index] = "value (ex: arr[0] = "hello")
  - Hash: a collection of unique key:value pairs (values are accessed by their keys, and keys should be unique: 
    - Assignement: hash[:key] = value (ex: hsh[:apple] = "red")
  - String: a collection of characters that use an integer-based index to represent each character.
    - much like an array of characters (in fact, String#chars breaks a string into an array of characters, ex: "hi hi".chars = ["h", "i", " ","h", "i"])
  - Each iterates through a collection and passes each element to the accompanying block. 
    - Returns the ORIGINAL ARRAY
  - Map iterates through a collection and passes each element to the accompanying block.
    - Returns a NEW ARRAY containing the return values of each iteration
  - Select iterates through a collection and passes each element to the accompanying block.
    - Returns a NEW ARRAY containing only the elements where the return value of the block (i.e. the return value of the last expression) is TRUTHY (everything except nil or false)
  - 

- [variables as pointers](https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers)

  - Variables don't actually contain values, they contain pointers that point to an address in memory that contains that value

    ```ruby
    a = "hi there"
    b = a
    a = "not here"
    ```

  - after this code, a = "not here" and b = "hi there"

    - after line 2 both `a` and `b`point at the string `'hi there'`and on line 3 a is reassigned to point to the string object with the value `'not here'`

  - ```ruby
    a = "hi there"
    b = a
    a << ", Bob"
    ```

  - after this code `a` and `b` both point to the string object `"hi there, Bob"`, which has the same `object_id` as the original string `"hi there"`

    - after line 2 both `a` and `b` are pointing at the string object `"hi there"`
    - On line 3 a calls the destructive method `<<` which mutates the original string by appending `", Bob"` to it.
    - Since `a` mutates the caller (the original object), variable `b` reflects the mutation as well, since it is pointing the same object
    - i.e. "The line of code `a << ", Bob"` did **not** result in reassigning `a` to a new string. Rather, it *mutated the caller* and modified the existing string, which is also pointed to by the variable `b`. This explains why in this code, `b` reflects the changes to `a` - they're both pointing to the same thing."

- [puts vs return](https://launchschool.com/books/ruby/read/methods#putsvsreturnthesequel)

  - Puts prints out the value to the console
  - in Ruby the last evaluated line is returned UNLESS there is an explicit `return` before then

- false vs nil and the idea of "truthiness"

  - **In Ruby, every expression evaluates as true when used in flow control, except for `false` and `nil`**
  - everything that isn't `false` or `nil` is "truthy" in Ruby 
  - Therefore, `x = 5` is truthy, as is `5`or `x` or any other evaluation (that isn't `nil` or `false`)
  - "Truthy" is not the same as the Boolean TRUE
    - `x = 5` does not "equal true" or "has a value of true", but it is "truthy"

- method definition and method invocation

  - Method definitions start with `def` followed by the method name, followed by the accepted parameters in parenthesis, followed by the body of the method and ending with `end` on the final line:

  - ```ruby
    def a_method(name)
      puts "Hello, #{name}"
    end
    ```

  - Method Invocation, often referred to as "calling" the method involves the name of the method followed by the arguments being passed into it (or implied ( ) to identify it as a method)

  - ```ruby
    a_method("Robert") #or a_method() #or a_method
    ```

  - ```ruby
    def say(words)
      puts words
    end
    
    say("hello")
    say("hi")
    ```

  - "When we call `say("hello")`, we pass in the string "hello" as the argument in place for the `words` parameter. Then the code within the method definition is executed with the `words` local variable evaluated to "hello"."

- implicit return value of method invocations and blocks

  - Ruby Implicitly returns the last line of a method/block

- how the `Array#sort` method works

  - compares elements using the <=> operator (or using an optional code block)
  - comparison must return an integer less than 0 (i.e. -1) when `b` comes after `a`, returns 0 if they are equivalent, and an integer greater than 0 if `a` comes after `b`

- We’ve initialized the variable `var_name` and assigned to it the Integer/String/etc object `value` to it.