#Create the below linked list:
# my_linked_list = {
#   head: {
#     value: 10
#     next: {
#       value: 5
#       next: {
#         value: 16
#         next: nil
#       }
#     }
#   }
# };

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


class LinkedList < Node
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
    @length += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
    @length += 1
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

  def insert_node(index, value)
    if(index >= @length)
      return self.append(value)
    end

    new_node = Node.new(value)
    leader = self.traverse_to_index(index - 1)
    holding_pointer = leader.next
    leader.next = new_node
    new_node.next = holding_pointer
    @length += 1
    return self.print_list
  end

  def remove_node(index)
    # Check params
    leader = self.traverse_to_index(index - 1)
    unwanted_node = leader.next
    leader.next = unwanted_node.next
    @length -= 1
    return self.print_list
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

  def reverse
    first = @head
    @tail = @head
    second = first.next
    while(second) do
      temp = second.next
      second.next = first
      first = second
      second = temp
    end
    @head.next = nil
    @head = first
    return self.print_list
  end
end

my_linked_list = LinkedList.new(10)
p my_linked_list.print_list
my_linked_list.append(7)
p my_linked_list.print_list
my_linked_list.prepend(3)
p my_linked_list.print_list
my_linked_list.insert_node(1, 24)
p my_linked_list.print_list
my_linked_list.remove_node(1)
p my_linked_list.print_list
my_linked_list.reverse
p my_linked_list.print_list
