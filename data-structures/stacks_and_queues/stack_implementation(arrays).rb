class Stack
  def initialize
    @array = Array.new
  end

  def push(value)
    @array << value
  end

  def peek
    p @array[@array.length - 1]
  end

  def pop
    @array.pop
  end

end


my_stack = Stack.new
my_stack.push("Google")
my_stack.push("Udemy")
my_stack.push("Discord")
p my_stack
my_stack.peek
my_stack.pop
p my_stack

