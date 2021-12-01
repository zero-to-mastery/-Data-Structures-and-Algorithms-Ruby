class Node
  attr_accessor :value, :next, :prev
  def initialize(value)
    @value = value
    @next = nil
    @prev = nil
  end
end

class DoublyLinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def prepend(value)
    new_node = Node.new(value)
    @head.prev = new_node
    new_node.next = @head
    @head = new_node
    @length += 1
  end

  def append(value)
    new_node = Node.new(value)
    new_node.prev = @tail
    @tail.next = new_node
    @tail = new_node
    @length += 1
    return self
  end
  def insert(index, value)
    # Check for proper parameters.
    if(index >= @length)
      return self.append(value)
    end

    new_node = Node.new(value)

    leader = self.traverse_to_index(index - 1)
    follower = leader.next
    leader.next = new_node
    new_node.prev = leader
    new_node.next = follower
    follower.prev = new_node
    @length += 1
    return self.print_list
  end

  def print_list
    array = []
    current_node = @head
    while(current_node != nil) do
      array << current_node.value
      current_node = current_node.next
    end
    return array
  end

  def traverse_to_index(index)
    counter = 0
    current_node = @head
    while(counter != index) do
      current_node = current_node.next
      counter += 1
    end
    return current_node
  end
end

my_list = DoublyLinkedList.new(10)
my_list.append(5)
my_list.append(16)
my_list.prepend(1)
my_list.insert(2, 99)
p my_list.print_list
# p my_list.print_list


