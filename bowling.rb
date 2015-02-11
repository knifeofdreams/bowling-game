class Game

  def initialize
    @score = 0
    @rolls = []
    @currentRole = 0
  end

  def roll pins
    @rolls[@currentRole] = pins
    @currentRole += 1
  end

  def score
    @rolls.each do |roll|
      @score += roll
    end
    @score
  end

end