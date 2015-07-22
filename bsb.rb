# Project 1: Bubble Sort by
# The Odin Project - advanced building blocks
# http://www.theodinproject.com/ruby-programming/advanced-building-blocks




def bubble_sort_by(array)
  (array.length - 1).times do |i|
  	if yield(array[i], array[i + 1]) < 0
  	  array[i], array[i + 1] = array[i + 1], array[i]
  	end
  end
  print array
end

p bubble_sort_by(["hi", "hello", "hey"]) { |left, right| right.length - left.length }