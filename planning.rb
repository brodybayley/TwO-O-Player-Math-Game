# will control players and keep track of current player
class Players
  def current_player?
  end

  def is_alive?
  end
end

# will control questions and provide the right player with the right questions
class Questions
  
  def question
  end

end

# will start game, control points and determine who is the winner
class Main
  include Players
  include Questions
  
  score = 0
  while (player1.is_alive && player2.is_alive) do
    x = (rand(10))
    y = (rand(10))
    z = x * y
    puts(("What does ") + String(x) + " plus " + String(y) + ("equal?"))
    answer = Integer(gets())
    if answer == z
      puts "YES! You are correct."
      puts "P1: #{score1}/3 vs P2: #{score2}/3"
    else 
      score = score - 1
      puts "Seriously? No!"
      puts "P1: #{score1}/3 vs P2: #{score2}/3"
    end

  def winner 
    "#{player} wins with a score of #{score}"
  end
end