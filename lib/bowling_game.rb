class BowlingGame
  attr_accessor :score

  def initialize
    @score = 0
  end

  def roll(pins)
    @score += pins
  end
end
