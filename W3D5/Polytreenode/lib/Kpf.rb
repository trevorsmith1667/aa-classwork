require_relative "PolyTreeNode"
class KnightPathFinder
    KNIGHT_MOVES =  [[2, 1], [-2, -1], [-2, 1], [2, -1], [1, 2], [-1, -2], [-1, 2], [1, -2]]
    attr_reader :start_pos
    def initialize(start_pos)
        @root_node = PolyTreeNode.new(@start_pos)
        @considered_pos = []
        build_move_tree(root_node)
    end 

    def self.build_move_tree
        self.root_node = PolyTreeNode.new(start_pos)

        nodes = [root_node]

        until nodes.empty?
            new_node = nodes.shift
            new_node_value = new_node.value

            
        end
    end 

    def self.valid_moves(pos)
        row, col = pos 

        all_potential_moves = KNIGHT_MOVES.map do |x, y|
            [row + x, col + y]
        end

        all_potential_moves.reject do |moves|
            moves.any? { |x, y| x, y < 0 || x, y > 7 }
        end
        possible_moves
    end 

    def new_move_positions(pos)
        new_positions = KnightPathFinder.valid_moves(pos)
        valid_pos = new_positions.reject { |position| @considered_pos.include?(position) }
        @considered_pos.concat(valid_pos)
        valid_pos
    end 


end 
