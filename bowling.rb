class Game

  def initialize
    @score = 0
    @rolls = Array.new(21, 0)
    @currentRoll = 0
  end

  def roll pins
    @rolls[@currentRoll] = pins
    @currentRoll += 1
  end

  def score
    firstInFrame = 0
    for frame in 0...10
      if strike?(firstInFrame)
        @score += 10 + next_two_balls_for_strike(firstInFrame)
        firstInFrame += 1
      elsif spare?(firstInFrame)
        @score += 10 + next_ball_to_spare(firstInFrame)
        firstInFrame += 2
      else
        @score += two_balls_in_frame(firstInFrame)
        firstInFrame += 2
      end
    end
    @score
  end

  def two_balls_in_frame(firstInFrame)
    @rolls[firstInFrame] + @rolls[firstInFrame + 1]
  end

  def next_ball_to_spare(firstInFrame)
    @rolls[firstInFrame + 2]
  end

  def next_two_balls_for_strike(firstInFrame)
    @rolls[firstInFrame + 1] + @rolls[firstInFrame + 2]
  end

  def strike?(firstInFrame)
    @rolls[firstInFrame] == 10
  end

  def spare?(firstInFrame)
    @rolls[firstInFrame] + @rolls[firstInFrame + 1] == 10
  end

end