require_relative "PolyTreeNode"
require "byebug"
class KnightPathFinder
    KNIGHT_MOVES =  [[2, 1], [-2, -1], [-2, 1], [2, -1], [1, 2], [-1, -2], [-1, 2], [1, -2]]
    attr_reader :start_pos
    attr_accessor :considered_pos, :root_node

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(@start_pos)
        @considered_pos = [start_pos]
        @start_pos = start_pos
        self.build_move_tree
        # p @considered_pos.length 
    end 

    def build_move_tree
        self.root_node = PolyTreeNode.new(start_pos)
        nodes = [root_node]
        
        until nodes.empty?
            new_node = nodes.shift
            new_node_pos = new_node.value

            new_move_positions(new_node_pos).each do |move|
               next_node = PolyTreeNode.new(move)
               new_node.add_child(next_node)
               nodes << next_node
            end 
        end 
    end 

    def self.valid_moves(pos)
        row, col = pos 
        valid_positions = []
        
        KNIGHT_MOVES.each do |(x, y)|
            possible_position = [row + x, col + y]

            if possible_position.all? { |xy| xy >= 0 && xy <= 7 }
                valid_positions << possible_position
            end
        end

        valid_positions
    end 

    def new_move_positions(pos)
        new_pos = KnightPathFinder.valid_moves(pos)
        good_pos = []

        new_pos.each do |position| 
            if !@considered_pos.include?(position) 
                good_pos << position 
                @considered_pos << position
            end 
        end 

        good_pos
    end

    def find_path(end_pos)
        end_node = root_node.dfs(end_pos)

        trace_path_back(end_node).reverse
    end

    def trace_path_back(end_node)
        new_array = []

        current = end_node
        
        while !current.nil?
            new_array << current
            current = current.parent
        end
        
        new_array
    end
end 


kpf = KnightPathFinder.new([0, 0]) 
p kpf.find_path([7,7])