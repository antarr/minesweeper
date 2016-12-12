require './lib/minesweeper'
require './lib/minesweeper/game'

game = Minesweeper.user_choose_game
Minesweeper.user_choose_cell(game) if game
