require_relative './grid'
module Minesweeper
  class Game
    attr_reader :grid

    def initialize(n, mines)
      @grid = Grid.new(n, mines)
    end

    def choose(n, m)
      @grid.choose(n, m)
    end

    def print
      puts @grid.render
    end
  end
end
