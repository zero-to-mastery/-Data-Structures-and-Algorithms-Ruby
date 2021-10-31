class Stack
  def initialize
    @array = Array.new
  end

  def push(value)
    @array << value
    return @array
  end

  def peek
    return @array[@array.length - 1]
  end

  def pop
    @array.pop
    return @array
  end

end


my_stack = Stack.new
my_stack.push("Google")
my_stack.push("Udemy")
my_stack.push("Discord")
p my_stack
p my_stack.peek
my_stack.pop
p my_stack

