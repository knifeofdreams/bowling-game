require 'rspec'
require_relative 'bowling'

describe 'BowlingGame' do
  before(:each) do
    @game = Game.new
  end

  it 'should be able to roll a ball' do
    @game.roll(0)
  end

  it 'should count score for gutter game' do
    20.times do
      @game.roll(0)
    end

    expect(@game.score).to eq(0)
  end
end