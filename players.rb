# will control players and keep track of current player
class Players
  def initialize(name)
    @name = name
    @lives = 3
  end

  def current_player?
  end

  def is_alive?
    @lives > 0
  end
end

  