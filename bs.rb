# http://www.theodinproject.com/ruby-programming/advanced-building-blocks
# Bubble Sort
# July 21
#
# Bubble sort will take an array and sort it using the bubble sort method.

def bubble_sort(array)
  n = array.length

  loop do
  	swapped = false

  	(n-1).times do |i|
  	  if array[i] > array[i + 1]
  	    array[i], array[i + 1] = array[i + 1], array[i]
  	    swapped = true
  	  end
  	end
  	break if not swapped
  end
  print array
end

bubble_sort([1, 4, 2, 7, 5])