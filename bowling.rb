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
    index = 0
    for frame in 0...10
      if (@rolls[index] + @rolls[index + 1]) ==10
        @score += 10 + @rolls[index + 2]
        index += 2
      else
        @score += @rolls[index] + @rolls[index + 1]
        index += 2
      end
    end
    @score
  end

end