# 1. a method that returns the sum of two integers
#   simple:
#     -asks user for first integer
#       - assign to num1
#     -asks user for second integer
#       -assign to num2
#     -returns num1 + num2
#   formal:
#     START

#     GET first integer from user
#     SET num1 = first integer
#     GET second integer from user
#     SET num2 = first integer

#     SET result = num1.to_i + num2.to_i
#     PRINT result
#     END

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
#   simple:
#     -create a results variable set to empty string
#     -Iterate through array of strings
#       -add each string to result string
#     -return results string
#   Formal
#     START

#     SET result = ""
#     EACH string in array
#       SET result = result + string
#     PRINT result

#     END

# 3. a method that takes an array of integers, and returns a new array with every other element
#   simple:
#     -create a results empty array
#     -iterate through array of integers
#       -add value to results array if index is even
#   Formal:
#     START

#     SET result = []
#     EACH integer in array
#       IF index is even
#         results << integer
#       ELSE
#         next iteration
#     PRINT result
    
#     END

  
