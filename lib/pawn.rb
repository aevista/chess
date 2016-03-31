require_relative 'piece'

class Pawn < Piece
    def initialize(x, y, color, piece)
        super(x, y, color, piece)
    end

    private

    def selected_moves
        positions = Array.new
        if y == 1 or y == 6
            positions = [[@x, @y + 1], [@x, @y + 2]] if @color == 'white'
            positions = [[@x, @y - 1], [@x, @y - 2]] if @color == 'black'
        else
            positions = [@x, @y + 1] if @color == 'white'
            positions = [@x, @y - 1]  if @color == 'black'
        end
        positions
    end
end