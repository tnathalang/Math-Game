class Player
    attr_reader :name 
    attr_accessor :life
    def initialize(name)
        @name = name
        @life = 3
        @ap = 1
    end

    def status 
        "P1: #{current_p.life}/3 vs P2: #{oppose_p.life}/3"
    end

    def no_life?
        @life <= 0 
    end


end