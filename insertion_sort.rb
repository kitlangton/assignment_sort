def insert(array, right_index, value)
  i = right_index

  while i >= 0 && array[i] > value
    array[i+1] = array[i]
    i -= 1
  end

  array[i+1] = value
end


def insertion_sort(array)
  (1...array.length).each do |i|
    insert(array, i-1, array[i])
  end
  array
end


insertion_sort( [3,1,7,2,5] ) # => [1, 2, 3, 5, 7]
