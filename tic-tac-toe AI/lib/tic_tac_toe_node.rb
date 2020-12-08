require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = Board.new
    @mark = :x
    @node = TicTacToeNode.new(board, mark)
    @next_mover_mark = next_mover_mark
  end

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    childs = @board
    children_array = []

    (0..2).each do |row|
      (0..2).each do |col|
        pos = [row, col]
        if childs.empty?(pos)
          new_board = childs.dup
          new_board[pos] = self.next_mover_mark
        end
      end      
    end

    childs.each do |x, y|
    end

  end
end
