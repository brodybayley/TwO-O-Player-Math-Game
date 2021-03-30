# will control questions and provide the right player with the right questions
class Question
  attr_accessor :answer, :question_show, :num1, :num2
  
  def initialize()
      @num1 = (rand(1..20))
      @num2 = (rand(1..20))
      @answer = num1 + num2
      @question_show = "What does #{num1} plus #{num2} equal?"
    end

    def answer
      @num1 + @num2
    end
  end