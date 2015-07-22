# Project 1: Bubble Sort
# The Odin Project - advanced building blocks
# http://www.theodinproject.com/ruby-programming/advanced-building-blocks




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