
module Slideable

    H_DIR = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    DIAG_DIR = [[-1, 1], [1, -1], [-1, -1], [1, 1]]

    def horizontal_dirs
        H_DIR
        #  row, col = pos 
        # valid_positions = []
        
        # H_DIR.each do |(x, y)|
        #     possible_position = [row + x, col + y]

        #     if possible_position.all? { |xy| xy >= 0 && xy <= 7 }
        #         valid_positions << possible_position
        #     end
        # end
        #  valid_positions
    end 

    def diagonal_dirs
        DIAG_DIR
    end 

    def moves
        all_moves_horizontal = []
        H_DIR.each do |direction|  
            dy, dx = direction[0], direction[1]
           all_moves += grow_unblocked_moves_in_dir(dy, dx)
        end 

        all_moves
    end 

    private 
    def move_dirs
    end 

    def grow_unblocked_moves_in_dir(dy, dx)
        positions_in_direction = []
        current_y, current_x = pos
        while true
            #if current_y, current_x + dy, dx on board = nullpiece && in bounds
            #shovel into positions 
            #elsif current y + currentx = opps piece 
            #shovel and exit
            #else 
            #exit
            # dy dx = direction
            #current pos = pos
            #current board = board
            # conditions: bounds, contact_same, contact_opps
            current_y += dy 
            current_x += dx
            break if current_y > 7 || current_y < 0 || current_x > 7 || current_x < 0
            new_pos = [current_y, current_x]
            if board[new_pos] == board.nullpiece
                positions_in_direction << new_pos
            elsif board[new_pos].color  == self.color
                break
            else 
                positions_in_direction << new_pos
                break
            end
        end 
        positions_in_direction
    end 

    def self.valid_moves(pos)
        
    end 

end 
