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
    index = 0
    for frame in 0...10
      @score += @rolls[index] + @rolls[index + 1]
      index += 2
    end
    @score
  end

end