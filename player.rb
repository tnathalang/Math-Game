class Player
    attr_reader :name 
    attr_accessor :life
    def initialize(name)
        @name = name
        @life = 3
        @ap = 1
    end

end