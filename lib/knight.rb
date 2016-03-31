require_relative 'piece'

class Knight < Piece

    def initialize(x, y, color, piece)
        super(x, y, color, piece)
    end

    private

    def selected_moves
        #creating array for all feasible and infeasible moves
        positions = [[@x+2, @y+1],[@x+2, @y-1], [@x - 2, @y + 1], [@x - 2, @y - 1], \
        [@x + 1, @y + 2], [@x + 1, @y - 2], [@x - 1, @y + 2], [@x - 1, @y - 2]]
        
        #selecting feasible moves
        playable_positions = positions.select{|x, y| x.between?(0,7)\
        and y.between?(0,7) }
    end
end
