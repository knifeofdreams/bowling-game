require 'rspec'
require_relative 'bowling'

describe 'BowlingGame' do
  before(:each) do
    @game = Game.new
  end

  def roll_many(n, pins)
    n.times do
      @game.roll(pins)
    end
  end

  describe 'score' do
    it 'should count score for gutter game' do
      roll_many(20, 0)

      expect(@game.score).to eq(0)
    end

    it 'should count score for 20 ones' do
      roll_many(20, 1)

      expect(@game.score).to eq(20)
    end
  end
end