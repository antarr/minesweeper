module Minesweeper
  class Block
    def initialize(value = Block.safe_block)
      @value = value
    end

    def armed?
      @value == Block.armed_block
    end

    def to_s
      @value
    end

    def self.safe_block
      ' ◼ '
    end

    def self.armed_block
      ' M '
    end

    def self.visited_block
      ' . '
    end
  end
end
