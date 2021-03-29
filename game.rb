# will start game, control points and determine who is the winner
class Game
  include Players
  include Questions

  puts "----- NEW TURN -----"
#with the game need to create player1 and player2 instances
while (player1.is_alive && player2.is_alive) do
  answer = Integer(gets())
  if answer == z
    puts "YES! You are correct."
    puts "P1: #{lives}/3 vs P2: #{lives}/3"
  else 
    score = score - 1
    puts "Seriously? No!"
    puts "P1: #{score1}/3 vs P2: #{score2}/3"
  end
#logic for checking lives of players and output thank you message and if no one wins then have next turn method that will create question and check answer. Need to add check answer
def check_winner 
  puts "----- GAME OVER -----"
  puts "#{player} wins with a score of #{score}"
end
end