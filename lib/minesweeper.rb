module Minesweeper
  def self.user_choose_cell(game)
    puts 'Which row is the cell on that you want to pick?'
    row = gets.chomp.to_i
    puts 'Which column is the cell in that you want to pick?'
    column = gets.chomp.to_i
    Minesweeper.user_choose_cell(game) unless game.choose(row, column)
  end

  def self.user_choose_game
    puts 'How many rows would you like your board to have?'
    rows = gets.chomp.to_i
    puts 'How many mines should be places on the board?'
    mines = gets.chomp.to_i
    if mines > rows * rows
      puts 'You have chosen more mines than avaiable cells'
      return false
    else
      Minesweeper::Game.new(rows, mines)
    end
  end
end
