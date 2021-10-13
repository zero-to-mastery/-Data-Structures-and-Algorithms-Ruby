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

# class Node
#   attr_accessor :next, :value
#   def initialize(value)
#     @value = value
#     @next = nil
#   end
# end


class LinkedList
  def initialize(value)
    @head = {
      value: value,
      next: nil
    }
    @tail = @head
    @length = 1
  end

  def append(value)
    new_node = {
      value: value,
      next: nil
    }
    @tail[:next] = new_node
    @tail = new_node
    @length += 1
  end

  def prepend(value)
    new_node = {
      value: value,
      next: nil
    }
    new_node[:next] = @head
    @head = new_node
    @length += 1
  end

  def print_list
    array = []
    current_node = @head
    while(current_node != nil) do
      array << current_node[:value]
      current_node = current_node[:next]
    end
    return array
  end

#Initial answer
#   def insert_node(index, value)
#     # check parameters
#     node_values = print_list
#     node_values.insert(index,value)
#     node_values.each_with_index do |node, index|
#       if index == 0
#         self.initialize(node)
#       else
#         self.append(node)
#       end
#     end
#     return self
#   end
  def insert_node(index, value)
    if(index >= @length)
      return self.append(value)
    end

    new_node = {
      value: value,
      next: nil
    }

    leader = self.traverse_to_index(index - 1)
    holding_pointer = leader[:next]
    leader[:next] = new_node
    new_node[:next] = holding_pointer
    @length += 1
    return self.print_list
  end
  def traverse_to_index(index)
    counter = 0
    current_node = @head
    while(counter != index)
      current_node = current_node[:next]
      counter += 1
    end
    return current_node
  end
end




my_linked_list = LinkedList.new(10)
my_linked_list.append(5)
my_linked_list.append(7)
my_linked_list.prepend(3)

my_linked_list.insert_node(1, 24)
p my_linked_list

