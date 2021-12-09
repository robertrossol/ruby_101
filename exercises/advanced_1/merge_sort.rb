
def merge(arr1, arr2)
  result = []
  arr2_index = 0

  arr1.each do |el|
    while arr2_index < arr2.size && arr2[arr2_index] <= el
      result << arr2[arr2_index]
      arr2_index += 1
    end
    result << el
  end
  result += arr2[arr2_index..-1]
  # result.concat(arr2[arr2_index..-1])
end

def merge_sort(arr)
  # unless arr.size < 2
    middle_idx = (arr.size.to_f/2).round
    arr1, arr2 = arr.partition.with_index {|_el, index| index < middle_idx}

    arr1.size > 1 ? arr1 = merge_sort(arr1) : arr1
    arr2.size > 1 ? arr2 = merge_sort(arr2) : arr2
  # end
  merge(arr1, arr2)
end
# p split([1])
# p x = split([1,3,5,6])
# p x = split([1,3,5,6,7,8])
# p x[(eval("[0]"*4))]
# p x[0][0][0][0]
# p split([1,3,5,6,7]).map {|sub_arr| split(sub_arr)}
# p split([1,3,5,6,7]).map {|sub_arr| split(sub_arr)}.map {|sub_arr| split(sub_arr)}

# p split(split([1,3,5,6,7]))
# p split(split([1,3,5,6]))


# def merge_sort(arr)
#   split(arr).map do sub_arr
#     while sub_arr.size > 1
#       sub_arr.map do sub_arr
        
#     end
#   end
# end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]