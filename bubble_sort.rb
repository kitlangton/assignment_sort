def bubble_sort(array)

  last = array.length - 1

  while last > 0
    (0...last).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i+1] = array[i + 1], array[i]
      end
    end
    last -= 1
  end

  array

end


bubble_sort( [1,3,7,2,5] ) # => [1, 2, 3, 5, 7]
