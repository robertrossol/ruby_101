-mutating the caller: happens when a destructive method is called on the caller
-destructive method: returns the original object, modified 
  - x = "hi"
  - x.reverse #"ih" x still equals "hi
  - x.reverse! #"ih" x (and any other variables pointing to "hi") now equals "ih"
-variables are pointers (they point to objects)
  a = 'hello'
  b = a
  a = 'goodbye'
-The first time you assign a value to a variable you are INITIALIZING it
-line 1 is initializing the local variable `a` (line 2 initializes `b`) and ASSIGNING the string object with a value 'hello' to it
-local variable `a` is REFERENCING the string object
-line 3 REASSIGNS local variable `a` to a different string object with value 'goodbye'
  def example(str) #line 1
    i = 3
    loop do #line 3
      puts str
      i -= 1 #line 5
      break if i == 0 #line 6
    end
  end

  example('hello') #line 10

- line 1: defines method 'example' which takes one parameter
- line 10: calls the method 'example' with the string 'hello' as an argument
- Methods are DEFINED with PARAMETERS, but they are CALLED with ARGUMENTS.
- line 3 calls the method loop with the do..end block as an argument
- line 4 calls the puts method and passes in the local variable str to it as an argument #'passing in as an argument'
- line 5: the local variable i is reassigned to the previous value of i minus 1.
  - `i -= 1` is Ruby syntactical sugar for i = i - 1
    -The `-` is actually a method `i = i.-(1)` that is called on `i` and takes 1 as an argument 
    -So, actually rassigning `i` to the return value of the `Integer#-` method call on local variable `i` with 1 passed as an argument 
- line 6: We are breaking out of the loop (by using the keyword break) if the (value that the) local variable `i` (is referencing is) is equal to 0
- On line 10 we are calling the method `example` and passing in the string'hello' as an argument
-This code outputs the string 'hello' three times and returns nil 

-each, map, & select
  - All three methods iterate through the enumerable objects they are called upon and passes each element the block
  -each method runs the block on each element and then returns the ORIGNAL ARRAY
  -map method runs the block on each element and moves the return value to a NEW ARRAY and then returns that array
  -select method considers if the return value EVALUATES to true and if it does, moves that value to a NEW ARRAY

-"We’ve initialized the variable var_name and assigned to it the Integer/String/etc object value to it."

Returns a new array by joining ary with other_ary, excluding any duplicates and preserving the order from the given arrays.