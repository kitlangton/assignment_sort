def partition(array, low, high)

  pivot = array[high]

  (low...high).each do |j|

    p array[low..j]
    p array[j..high]

    if array[j] < pivot
      low +=1
      array[low], array[j] = array[j], array[low]
    end
  end
  array[low+1], array[high] = array[high], array[low+1]
end

array = [12,7,14,9,10,11]
partition(array, 0, 5)

p array


# def quick_sort(array)

# end