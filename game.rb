require './players'
require './questions'
# will start game, control points and determine who is the winner
class Game
  
  player1 = Players.new
  player2 = Players.new

  while (player1.is_alive && player2.is_alive) do
    player = current_player
    puts "----- NEW TURN -----"
    question = Questions.new
    puts "#{player}: #{question.question_show}"
    print '> '
    answer = gets.chomp
    if answer == right_answer
      puts "#{player}: YES! You are correct."
      puts "P1: #{lives}/3 vs P2: #{lives}/3"
    else 
      player.lives - 1
      puts "#{player}: Seriously? No!"
      puts "P1: #{lives}/3 vs P2: #{lives}/3"
    end
    count = count + 1
  end

#logic for checking lives of players and output thank you message and if no one wins then have next turn method that will create question and check answer. Need to add check answer
def check_winner 
  if !(player.is_alive)
    puts "Player 2 wins with a score of #{lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    puts "Player 1 wins with a score of #{lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end