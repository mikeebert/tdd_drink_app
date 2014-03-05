class BowlingGame
  attr_accessor :score

  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end
  
  def score
    @frame_index = 0
    
    10.times do
      if is_strike?
        score_strike_bonus
      elsif is_spare?
        score_spare_bonus        
      else
        score_regular_frame        
      end
    end
    
    @score
  end
  
  private
  def is_strike?
    @rolls[@frame_index] == 10
  end
  
  def is_spare?
    @rolls[@frame_index] + @rolls[@frame_index + 1] == 10
  end
  
  def score_strike_bonus
    @score += 10 + @rolls[@frame_index + 1] + @rolls[@frame_index + 2]
    @frame_index += 1
  end
  
  def score_spare_bonus
    @score += 10 + @rolls[@frame_index + 2]
    @frame_index += 2
  end
  
  def score_regular_frame
    @score += @rolls[@frame_index] + @rolls[@frame_index + 1]
    @frame_index += 2
  end
  
end
