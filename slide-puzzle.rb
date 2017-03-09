=begin
    1) Establish board
    2) Establish rules
    3) ** Note that half boards are not solveable, so try to do a smart shuffle so that all can be solved
    4) Write a test!
    
=end

$raw_board = [1,2,3,4,5,6,7,8,'_'];

def stylize_board()
    $styled_board = $raw_board.map { |val| 
        "[#{val}]"
    }

    puts $styled_board[0...3].join('')
    puts $styled_board[3...6].join('')
    puts $styled_board[6...9].join('')
end

stylize_board()


# The user says which number they want to move
# The piece can only move one way so that is taken care of
