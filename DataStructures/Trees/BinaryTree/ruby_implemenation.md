```ruby
  module BinaryTree
    # solution 1
    # class Node
    #   attr_reader :value
    #   attr_accessor :left, :right

    #   def initialize(value, left, right)
    #     @value = value
    #     @left = nil
    #     @right = nil
    #   end
    # end

    class Node
      attr_accessor :value, :left, :right

      def initialize(value)
        @value = value
      end
    end
  end

  # insert node manually
  tree = BinaryTree::Node.new(10)
  tree.left = BinaryTree::Node.new(5)
  tree.right = BinaryTree::Node.new(15)
  # puts tree
  tree.left.left = BinaryTree::Node.new(2)
  tree.left.right = BinaryTree::Node.new(4)
```