require_relative 'knight'
require_relative 'pawn'
require_relative 'rook'
require_relative 'bishop'
require_relative 'king'
require_relative 'queen'
require_relative 'cell'

class Board
    def initialize
        @board = initialize_board
    end

    def  display_board
        @board.each{|row| row.each{|column| print (column == '' ? "   " : " #{column.piece} ")};puts}
    end

    private

    def initialize_board
        board = Array.new(8) { Array.new(8, '') }
        for n in 0..7 
            board[1][n] = Pawn.new(n, 1, 'white', "\u2659")
            board[6][n] = Pawn.new(n, 6, 'black', "\u265f")
        end

        board[0][0] = Rook.new(0,0, 'white', "\u2656")
        board[-1][0] =  Rook.new(0, 7, 'black',"\u265C")

        board[0][1] = Knight.new(1, 0, 'white', "\u2658")
        board[-1][1] = Knight.new(1, 7, 'black', "\u265E")

        board[0][2] = Bishop.new(2,0, 'white', "\u2657")
        board[-1][2] = Bishop.new(2, 7, 'black', "\u265D")
 
        board[0][3] = Queen.new(3, 0, 'white', "\u2655")
        board[-1][3] =  Queen.new(4, 7, 'black', "\u265B")
 
        board[0][4] = King.new(4, 0, 'white', "\u2654")
        board[-1][4] =King.new(3, 7, 'black', "\u265A")

        board[0][5..7] = board[0][0..2].reverse
        board[-1][5..7] = board[-1][0..2].reverse
        
        return board
    end
end
