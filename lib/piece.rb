class Piece
    attr_accessor :x, :y
    attr_reader :moves
    def initialize(x, y)
        @x = x
        @y = y
        @moves = Array.new
    end
end