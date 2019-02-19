require_relative './player'
require_relative './question'

class Game
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @players = [@player1, @player2]
        @turn = 1
      
    end

    def run
        puts "------------TURN#{@turn}--------------"
        current_p = @players.first
        oppose_p = @players[1]
        @qst  = Question.new()
        @anw = @qst.num1 + @qst.num2
        puts "#{current_p.name}: #{@qst.question}"
        @ans = gets.chomp.to_i
        if @ans == @anw
            puts "#{current_p.name}: YES! you are correct."
                 elsif
            puts "#{current_p.name}: Seriously? No!"
                 end
    end
end