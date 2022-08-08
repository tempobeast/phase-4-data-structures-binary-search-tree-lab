require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    node = @root

    if node.nil?
      return nil
    else
      while node
        if node.value == value
          return node
        else 
          if value > node.value
            node = node.right
          else
            node = node.left
          end
        end
      end
    end
  end

  def insert(value)
    node = @root
    new_node = Node.new(value)
    if node.nil?
      self.root = new_node
    end
    while node
        if new_node.value > node.value && node.right.nil?
          new_node = node.right
          return new_node
        elsif value < node.value && node.left.nil?
          new_node = node.left
          return new_node
        elsif value > node.value && node.right
          node = node.right
        else
          node = node.left
        end
        return nil
    end  
    return new_node
  end

end 
