require "byebug"

class PolyTreeNode
    attr_reader :value, :parent
    def initialize(value = nil, children = [])
        @value = value
        @parent = nil
        @children = []
    end 

    def children
      @children
    end

    def parent=(node) # child = self
        self.parent.children.delete(self) if self.parent
        @parent = node
        self.parent.children << self unless self.parent.nil?
        self
    end 

    def add_child(node)
        node.parent = self 
    end 

    def remove_child(node)
        node.parent = nil
        raise "not child" if !self.children.include?(node)

    end 
end

class Searchable 
    def dfs(value, target)
        
    end 

    def bfs
    end 


end 

# n1 = PolyTreeNode.new("root1")
# n2 = PolyTreeNode.new("root2")
# n3 = PolyTreeNode.new("root3")

# # connect n3 to n1
# n3.parent = n1
# # connect n3 to n2
# n3.parent = n2

# # this should work
# raise "Bad parent=!" unless n3.parent == n2
# raise "Bad parent=!" unless n2.children == [n3]

# # this probably doesn't
# raise "Bad parent=!" unless n1.children == []