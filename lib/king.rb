require_relative 'piece'

class King < Piece
    def initialize(x, y, color, piece)
        super(x, y, color, piece)
    end

    private 

    def selected_moves
        positions = [[@x + 1, @y], [@x - 1,  @y], [@x, @y + 1], [@x, @y - 1],\
                                            [@x + 1, @y + 1], [@x + 1, @y - 1], [@x - 1, @y + 1], [@x - 1, @y - 1]]

        playable_positions = positions.select{|x, y| x.between?(0,7) and y.between?(0, 7)}
    end
end