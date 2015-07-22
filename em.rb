# Project 2: Enumerable Methods
# The Odin Project - advanced building blocks
# http://www.theodinproject.com/ruby-programming/advanced-building-blocks




module Enumerable
  

  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end


  def my_each_with_index
  	return self unless block_given?
  	for i in 0...length
  	  tield(self[i], i)
  	end
  end


  def my_select
    result = []
    self.my_each { |element| result << element if yield(element) }
    result
  end


  def my_all?
    self.my_each { |element| return true if yield(element) }
    false
  end

  
  def my_any?
    self.my_each { |element| return true if yield(element) }
    false
  end


  def my_none?
    self.my_each { |element| return false if yield(element) }
    true
  end


  def my_count
    count = 0
    self.my_each do |element|
      count += if block_given?
        yield(element) ? 1 : 0
      else
        1
      end
    end
    count
  end


  def my_map(&proc)
    result = []
    if block_given?
      self.my_each { |item| result << proc.call(item) }
      return result
    end
  end


  def my_inject(initial = nil)
    if initial.nil?
      initial = self[0]
      i = 1
    else
      i = 0
    end
    result = initial
    while i < self.length
      result = yield(result, self[i])
      i += 1
    end
    return result if block_given?
  end

end


def multiply_els(array)
  array.my_inject { |a, b| a * b }
end