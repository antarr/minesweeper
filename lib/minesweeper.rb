require_relative './minesweeper/block'
require_relative './minesweeper/game'
require_relative './minesweeper/grid'

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

  def self.user_simulate_games
    puts 'How many games would you like to play?'
    games = gets.chomp.to_i
    puts 'How many colunms should each game have?'
    colunms = gets.chomp.to_i
    puts 'How many mines should each game have?'
    mines = gets.chomp.to_i
    run_simlation(games, colunms, mines)
  end

  def self.run_simlation(games, cols, mines)
    results = { wins: 0, loses: 0 }
    games.times do
      game = Minesweeper::Game.new(cols, mines)
      positions = Minesweeper.board_positions(cols)
      loop do
        position = positions.sample
        if game.choose(position[0], position[1])
          game.grid.ended? ? results[:wins] += 1 : results[:loses] += 1
          break
        end
      end
    end
    puts "#{results[:wins]} games were won and #{results[:loses]} were lost."
  end

  def self.board_positions(size)
    positions = []
    (0..size - 1).to_a.each do |i|
      (0..size - 1).to_a.each do |j|
        positions << [i, j]
      end
    end
    positions
  end
end
