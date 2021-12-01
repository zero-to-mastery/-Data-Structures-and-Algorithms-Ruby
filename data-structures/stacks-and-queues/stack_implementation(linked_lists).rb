class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  def initialize
    @top = nil
    @bottom = nil
    @length = 0
  end

  def peek
    return @top
  end

  def push(value)
    new_node = Node.new(value)
    if (@length == 0)
      @top = new_node
      @bottom = new_node
    else
      holding_pointer = @top
      @top = new_node
      @top.next = holding_pointer
    end
    @length += 1
    return self
  end

  def pop
    if (!@top)
      return nil
    end

    if (@top == @bottom)
      @bottom = nil
    end

    holding_pointer = @top
    @top = holding_pointer.next
    @length -= 1
    return self
  end
end

my_stack = Stack.new
my_stack.push('Google')
p my_stack
my_stack.push('Udemy')
p my_stack
my_stack.push('Discord')
my_stack.pop
my_stack.pop
my_stack.pop
p my_stack
