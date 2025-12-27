module Enumerable
  # Your code goes here
  def my_each_with_index(&my_block)
    for i in 0...length
      my_block.call self[i], i
    end

    self
  end

  def my_select(&my_block)
    my_array = []
    my_each do |element|
      my_array.push element if my_block.call element
    end

    my_array
  end

  def my_all?(&my_block)
    return true if my_select(&my_block).length == length

    false
  end

  def my_any?(&my_block)
    return true unless my_select(&my_block).length.zero?

    false
  end

  def my_none?(&my_block)
    return true unless my_any?(&my_block)

    false
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
