class Game

  def initialize
    @score = 0
  end
  
  def roll(pins)
    @score = @score + pins
  end

  def get_score()
    return @score
  end

end
