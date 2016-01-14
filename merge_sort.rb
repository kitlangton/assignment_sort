def merge_sort(array)

  return array if array.length == 1

  half_way = array.length / 2
  left = array[0...half_way]
  right =  array[half_way..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  puts "MERGE"
  p left
  p right

  merged_array = []

  until left.size == 0 && right.size == 0
    if left.size == 0
      merged_array << right.shift
    elsif right.size == 0
      merged_array << left.shift
    elsif left[0] > right[0]
      merged_array << right.shift
    else
      merged_array << left.shift
    end
  end

  p merged_array
  merged_array
end

merge_sort([1,3,7,9,2,5,8,8]) # => [1, 2, 3, 5, 7, 8, 8, 9]
# >> MERGE
# >> [1]
# >> [3]
# >> [1, 3]
# >> MERGE
# >> [7]
# >> [9]
# >> [7, 9]
# >> MERGE
# >> [1, 3]
# >> [7, 9]
# >> [1, 3, 7, 9]
# >> MERGE
# >> [2]
# >> [5]
# >> [2, 5]
# >> MERGE
# >> [8]
# >> [8]
# >> [8, 8]
# >> MERGE
# >> [2, 5]
# >> [8, 8]
# >> [2, 5, 8, 8]
# >> MERGE
# >> [1, 3, 7, 9]
# >> [2, 5, 8, 8]
# >> [1, 2, 3, 5, 7, 8, 8, 9]
