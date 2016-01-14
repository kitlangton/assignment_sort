def partition(array, low, high)
  pivot = array[high]

  (low...high).each do |j|
    if array[j] < pivot
      array[low], array[j] = array[j], array[low]
      low +=1
    end
  end

  array[low], array[high] = array[high], array[low]
  low
end

def quick_sort(array, p, r)
  if p < r
    part = partition(array,p,r)
    quick_sort(array, p, part-1)
    quick_sort(array, part+1, r)
  end
end

array = [12,7,14,9,10,11, 1283, 87,87 ,87 ,87 ,6]
quick_sort(array, 0, array.length-1)
p array
# >> [6, 7, 9, 10, 11, 12, 14, 87, 87, 87, 87, 1283]
