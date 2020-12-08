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
            all_possible_positions = [row + x, col + y]
            valid_positions << all_possible_positions if all_possible_positions.all? { |xy| xy >= 0 && xy <= 7 }
        end


        valid_positions
    end 

    def new_move_positions(pos
        new_pos = KnightPathFinder.valid_moves(pos)
        # puts "@considered_pos = #{@considered_pos}"
        new_pos.reject { |position| @considered_pos.include?(position) }
        new_pos.each do |curr_pos|
            considered_pos << curr_pos 
            valid_pos << curr_pos
        end
        valid_pos
    end 
    #     good_pos = []

    #     new_pos.each do |position| 
    #         if !@considered_pos.include?(position) 
    #             good_pos << position 
    #         end 
    #     end 
    #     good_pos.each do |curr_pos|
    #          @considered_pos << curr_pos 
    #          valid_moves << curr_pos
    #         end
    #     valid_moves
    # end 
end 


kpf = KnightPathFinder.new([0, 0]) 
p kpf.new_move_positions([1, 2])


