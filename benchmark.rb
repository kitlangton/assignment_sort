require_relative 'merge_sort'
require_relative 'bubble_sort'
require_relative 'insertion_sort'


def sort_benchmark

  start = Time.now
  50.times do
    yield
  end
  finish = Time.now

  puts (finish - start)
end
array = Array.new(7000){rand(3000)}

puts "insertion sort"
sort_benchmark do
  insertion_sort(array)
end

puts "bubble sort"
sort_benchmark do
  bubble_sort(array)
end

puts "merge sort"
sort_benchmark do
  merge_sort(array)
end