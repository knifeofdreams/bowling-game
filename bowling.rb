class Game
  @@score = 0

  def roll pins
    @@score += pins
  end

  def score
    @@score
  end

end