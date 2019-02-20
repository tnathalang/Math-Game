
require_relative './player'
require_relative './question'

class Game
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @players = [@player1, @player2]
        @turn = 1
      
    end

    def game_over? 
        @players.any? {|player| player.no_life?}
    end

    def over
        puts
        puts "---------GAME OVER----------"
        loser = @players.find { |player| player.no_life? }
        puts "#{loser.name} cannot do basic math"
    end 

    def summary
        puts
        puts "--------Current Health Status---------"
        puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    end


    def run
       while !game_over?
        puts "------------TURN #{@turn}--------------"
        current_p = @players.first
        oppose_p = @players[1]
        @qst  = Question.new()
        @anw = @qst.num1 + @qst.num2
        puts "#{current_p.name}: #{@qst.question}"
        @ans = gets.chomp.to_i
        if @ans == @anw
            puts "#{current_p.name}: YES! you are correct."
                 elsif
                    current_p.life -= 1
            puts "#{current_p.name}: Seriously? No!"
                 end
           
       
            summary
            @turn += 1
            sleep 0.7
            @players.rotate!
           
        end
        over
    end

end