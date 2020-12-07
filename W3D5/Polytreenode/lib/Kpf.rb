require_relative "PolyTreeNode"
require "byebug"
class KnightPathFinder
    KNIGHT_MOVES =  [[2, 1], [-2, -1], [-2, 1], [2, -1], [1, 2], [-1, -2], [-1, 2], [1, -2]]
    attr_reader :start_pos
    attr_accessor :considered_pos, :root_node

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(@start_pos)
        @considered_pos = [start_pos]
        self.build_move_tree
        p @considered_pos.length 
    end 

    def build_move_tree
        self.root_node = PolyTreeNode.new(start_pos)
        nodes = [root_node]
        until nodes.empty?
            new_node  = nodes.shift
            new_node_pos = new_node.value
            new_move_positions(new_node_pos).each do |move|
               next_node = new_node.PolyTreeNode.add_child(move)
               nodes << next_node
            end 
        end 
    end 

    def self.valid_moves(pos)
        row, col = pos 
        valid_positions = []
        
        KNIGHT_MOVES.each do |(x, y)|
            all_possible_positions = [row + x, col + y]
            valid_positions << all_possible_positions if all_possible_positions.all? { |xy| xy >= 0 && xy <= 7 }
        end


        valid_positions
    end 

    def self.new_move_positions(pos)
        new_positions = KnightPathFinder.valid_moves(pos)
        puts "@considered_pos = #{@considered_pos}"

        valid_pos = new_positions.reject { |position| @considered_pos.include?(position) }
        valid_pos.each do |curr_pos|
            @considered_pos << curr_pos if !@considered_pos.include?(curr_pos)
        end
        valid_pos
    end 
end 


#kpf = KnightPathFinder.new([0, 0]) 
p KnightPathFinder.new_move_positions([1, 2])


