
def merge(arr1, arr2)
  result = []
  arr1 = arr1.clone
  arr2 = arr2.clone
  until arr1.empty? || arr2.empty?
    temp1 = arr1[0]
    temp2 = arr2[0]
    if temp1 <= temp2
      result << arr1.shift
    else
      result << arr2.shift
    end
  end
  arr1.empty? ? result += arr2 : result += arr1
  # result
  result
end




array1 = [1, 5, 9]
array2 = [2, 6, 8]
p merge(array1, array2) == [1, 2, 5, 6, 8, 9]
p array1
p array2
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]