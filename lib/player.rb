class Player 
    attr_reader :name
    def initialize player
        @name = player[:name]
    end
end