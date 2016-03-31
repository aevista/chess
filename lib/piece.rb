class Piece
    attr_accessor :x, :y
    attr_reader :moves, :color, :piece
    def initialize(x, y, color, piece)
        @x = x
        @y = y
        @moves = selected_moves
        @color  = color
        @piece = piece.encode('utf-8')
    end
    
    private 

    def selected_moves
        raise NotImplementedError, "Implement this method in child class"
    end
end