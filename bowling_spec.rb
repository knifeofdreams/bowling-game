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

    it 'should count score for one spare follower by gutter balls' do
      @game.roll(5)
      @game.roll(5)
      @game.roll(3)
      roll_many(17, 0)

      expect(@game.score).to eq(16)
    end
  end
end