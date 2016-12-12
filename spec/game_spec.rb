require 'spec_helper'

describe Game do
  it { should respond_to(:won?) }
  it { should respond_to(:grid) }
end
