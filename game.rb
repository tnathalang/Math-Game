require_relative './player'

class Game
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @players = [@player1, @player2]
        @round = 1
      
    end

    def run
        puts "------------Round#{@round}--------------"
        current_p = @players.first
        oppose_p = @players[1]


        puts "#{current_p.name}: What does #{num1} plus #{num2} equal?"
        puts rand()
        puts (if num1 + num2 = answer_num) 
                puts "#{current_p}: YES! you are correct."
    elsif
        puts "#{current_p}: Seriously? No!"
        

       
    end
end