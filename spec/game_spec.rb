require 'spec_helper'

describe Minesweeper::Game do
  let(:game) { described_class.new(10, 10) }
  it { should respond_to(:won?) }
  it { should respond_to(:grid) }
  it { should respond_to(:choose) }
  it { should respond_to(:ended?) }

end
