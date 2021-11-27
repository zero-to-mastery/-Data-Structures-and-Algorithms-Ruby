require 'json'
class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  attr_accessor :root, :left, :right
  def initialize
    @root = nil
  end

  def insert(value)
    new_node = Node.new(value)
    if(@root == nil)
      @root = new_node
    else
      current_node = @root
      while(true)
        if(value < current_node.value)
          # Left
          if(!current_node.left)
            current_node.left = new_node
            return self
          end
          current_node = current_node.left
        else
          #Right
          if(!current_node.right)
            current_node.right = new_node
            return self
          end
          current_node = current_node.right
        end
      end
    end
  end
  def lookup(value)
    current_node = @root
    while(current_node.value != nil)
      if(value < current_node.value)
        # Left
        current_node = current_node.left
        if (current_node == nil)
          return "Number is not in Tree!"
        end

        if(current_node.value != value)
          next
        end
        return current_node
      else
        #Right
        current_node = current_node.right
        if (current_node == nil)
          return "Number is not in Tree!"
        end

        if(current_node.value != value)
          next
        end
        return current_node
      end
    end
    return nil
  end
end

#      9
#   4     20
# 1  6  15  170

def traverse(node)
  tree = { value: node.value}
  tree[:left] = node.left == nil ? nil : traverse(node.left)
  tree[:right] = node.right == nil ? nil : traverse(node.right)
  return tree
end


tree = BinarySearchTree.new
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)
p tree.lookup(5)
p traverse(tree.root).to_json


