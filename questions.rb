# will control questions and provide the right player with the right questions
class Questions
  include Players
  attr_accessor :answer, :question  
  
  def initialize()
      num1 = (rand(10))
      num2 = (rand(10))
      answer = num1 + num2
      question = "#{current_player}: What does #{num1} plus #{num2} equal?"
    end
  end