class Question
    attr_reader :question, :num1, :num2
    def initialize
        @num1 = rand(1...20)
        @num2 = rand(1...20)
        @question = "What does #{@num1} plus #{@num2} equal?"
        
    end
end