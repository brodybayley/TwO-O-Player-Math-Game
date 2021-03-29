# will control players and keep track of current player and determine if play is alive or not
class Players

  attr_accessor :name, :lives, :count

  def initialize()
    @lives = 3
    @count = 0
  end

  def current_player
    @count % 2 == 0 ? player1 : player2
  end

  def is_alive?
    @lives > 0
  end
end

  