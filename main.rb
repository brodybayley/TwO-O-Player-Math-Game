# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './questions'
require './game'
require './players'

#creating an instance of the game class
game = Game.new
game.start

