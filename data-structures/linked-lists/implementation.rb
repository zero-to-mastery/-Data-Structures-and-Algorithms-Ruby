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
end

my_linked_list = LinkedList.new(10)
my_linked_list.append(5)
my_linked_list.append(7)
my_linked_list.prepend(3)
p my_linked_list.head

