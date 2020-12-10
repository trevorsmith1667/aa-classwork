#require piece files
require_relative "./Pieces/rook"
require_relative "./Pieces/nullpiece"
class Board
    attr_accessor :rows, :move_piece 
    attr_reader :nullpiece
    def initialize
        @nullpiece = NullPiece.instance
        @rows = Array.new(8) {Array.new(8, @nullpiece)}
    end 

    def [](pos)
        row, col = pos
        @rows[row][col]
    end 

    def[]=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end 

    def move_piece(start_pos, end_pos)
        raise "no piece" if self[start_pos] == @nullpiece
        raise "invalid move" if self[end_pos] != @nullpiece
       value = self[start_pos] 
       self[end_pos] = value
       self[start_pos] = @nullpiece
    end

    def populate_board
        x = 0
        while x < @rows.length
            y = 0
            while y < @rows.length
                if x == 0 || x == 1 || x == 6 || x == 7
                    @rows[x][y] = Piece.new.value
                end
                y += 1
            end
            x += 1
        end
    end
end 
p board1 = Board.new
rook = Rook.new(:W, board1, [0, 0])

p board1[[0, 0]] = rook

p rook.moves



  