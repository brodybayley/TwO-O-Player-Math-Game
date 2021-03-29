# will control questions and provide the right player with the right questions
class Questions
  
  def initialize(question)
      x = (rand(10))
      y = (rand(10))
      z = x + y
      puts(("What does ") + String(x) + " plus " + String(y) + ("equal?"))
    end
  end