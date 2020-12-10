
class Piece
    attr_accessor :board, :pos, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end 

    def to_s
    end 

    def empty?

    end 

    def valid_moves
    end 

    def pos=(value)
    end 

    def moves
    end 

    private
    def move_into_check?(end_pos)
    end 

end 