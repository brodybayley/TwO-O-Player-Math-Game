# will start game, control points and determine who is the winner
class Game

  def initialize ()
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
    @question = Question.new
  end

  def correct?
    player_guess == @question.answer
  end

  def turn 
    puts "----- NEW TURN -----"
    puts "Player #{@current_player.id}: #{@question_show}"
    print "> "
    guess = gets.chomp.to_i

    if input == @question.answer
      puts "Player #{@current_player.id}: YES! You are correct."
    else 
      puts "Player #{@current_player.id}: Seriously? No!"
      @current_player.lose_turn
    end
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end


  def score 
    puts "----- Score -----"
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  end


  def start 
    while player1.is_alive? && player2.is_alive? do
      turn()
      score()
      switch_players()
    end
    puts "Player #{@current_player.id} wins with a score of #{@current_player.score}/3"
    puts "Good bye!"
  end
end

