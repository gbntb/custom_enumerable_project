module Enumerable
  # Your code goes here
  def my_each_with_index(&my_block)
    for i in 0...length
      my_block.call self[i], i
    end

    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each(&my_block)
    for i in 0...length
      my_block.call self[i]
    end

    self
  end
end
