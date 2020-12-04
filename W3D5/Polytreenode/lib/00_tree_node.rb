class PolyTreeNode
    attr_reader :value, :children, :parent
    def initialize(value, children = [])
        @value = value
        @parent = nil
        @children = []
    end 

    def parent=(node)
        # self.parent = node
        # self.parent.children

    end 

end