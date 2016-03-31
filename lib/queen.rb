require_relative 'piece'

class Queen < Piece
    def initialize(x, y, color, piece)
        super(x, y, color, piece)
    end

    private 

    def selected_moves
        positions = Array.new
        for n in 1...7
            positions <<  [@x + n, @y]
            positions <<  [@x - n,  @y]
            positions << [@x, @y + n]
            positions << [@x, @y - n]
            positions << [@x + n, @y + n]
            positions << [@x + n, @y - n]
            positions << [@x - n, @y + n]
            positions << [@x - n, @y - n]
        end 

        playable_positions = positions.select{|x, y| x.between?(0,7) and y.between?(0,7)}
    end
end