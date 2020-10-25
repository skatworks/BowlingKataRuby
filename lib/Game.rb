class Game

  def initialize
    @rolls = []
  end
  
  def roll(pins)
    @rolls << pins
  end

  def get_score()
    score = 0
    frame = 0
    
    10.times {
      if @rolls[frame] + @rolls[frame + 1] == 10 then
        score = score + 10 + @rolls[frame + 2]
        frame += 2
      else
        score = score + @rolls[frame] + @rolls[frame + 1]
        frame += 2
      end
    }
    score
  end

end
