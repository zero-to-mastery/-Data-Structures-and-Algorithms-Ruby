class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class Queue
  def initialize
    @first = nil
    @last = nil
    @length = 0
  end

  def peek
    return @first
  end

  def enqueue(value)
    new_node = Node.new(value)

    if (@length == 0)
      @first = new_node
      @last = new_node
    else
      @last.next = new_node
      @last = new_node
    end

    @length += 1
    return self
  end

  def dequeue
    if (!@first)
      return nil
    end

    if (@first == @last)
      @last = nil
    end

    holding_pointer = @first
    @first = @first.next
    @length -= 1
    return self
  end

end

my_queue = Queue.new
my_queue.enqueue("Udemy")
my_queue.enqueue("Google")
my_queue.enqueue("Discord")
p my_queue
p my_queue.peek
my_queue.dequeue
p my_queue
my_queue.dequeue
p my_queue
my_queue.dequeue
p my_queue
