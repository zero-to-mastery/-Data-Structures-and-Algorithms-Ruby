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

  def remove(value)
    if(!@root)
      return false
    end
    current_node = @root
    parent_node = nil
    while(current_node)
      if(value < current_node.value)
        parent_node = current_node
        current_node = current_node.left
      elsif(value > current_node.value)
        parent_node = current_node
        current_node = current_node.right
      elsif (current_node.value == value)
        #We have a match, get to work!

        #Option 1: No right child:
        if(current_node.right == nil)
          if(parent_node == nil)
            @root = current_node.left
          else
            # if parent > current value, make current left child a child of parent.
            if(current_node.value < parent_node.value)
              parent_node.left = current_node.left
            #if parent < current value, make left child a right child of parent
            elsif(current_node.value > parent_node.value)
              parent_node.right = current_node.left
            end
          end
        #Option 2: Right child which doesn't have a left child
        elsif(current_node.right.left == nil)
          current_node.right.left = current_node.left
          if(parent_node == nil)
            @root = current_node.right
          else
          #If parent > current, make right child of the left, the parent.
            if(current_node.value < parent_node.value)
              parent_node.left = current_node.right
            #if parent < current node, make right child a right child of the parent
            elsif(current_node.value > parent_node.value)
              parent_node.right = current_node.right
            end
          end
        #Option 3: Right child has a left child
        else
          leftmost = current_node.right.left
          leftmost_parent = current_node.right
          while(leftmost.left != nil)
            leftmost_parent = leftmost
            leftmost = leftmost.lefmost
          end
          #Parent's left subtree is now leftmost's right subtree
          leftmost_parent.left = leftmost.right
          leftmost.left = current_node.left
          leftmost.right = current_node.right

          if(parent_node == nil)
            @root = lefmost
          else
            if(current_node.value < parent_node.value)
              parent_node.left = lefmost
            elsif(current_node.value > parent_node.value)
              parent_node.right = lefmost
            end
          end
        end
        return true
      end
    end
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
tree.remove(170)
p tree.lookup(5)
p traverse(tree.root).to_json


