class Game

  def initialize
    @score = 0
    @rolls = []
    @currentRole = 0
  end

  def roll pins
    @rolls << pins
  end

  def score
    firstInFrame = 0
    for frame in 0...10
      if spare?(firstInFrame)
        @score += 10 + @rolls[firstInFrame + 2]
        firstInFrame += 2
      else
        @score += @rolls[firstInFrame] + @rolls[firstInFrame + 1]
        firstInFrame += 2
      end
    end
    @score
  end

  def spare?(firstInFrame)
    (@rolls[firstInFrame] + @rolls[firstInFrame + 1]) ==10
  end

end