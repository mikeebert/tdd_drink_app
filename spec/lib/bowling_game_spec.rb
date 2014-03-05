require 'bowling_game'

describe BowlingGame do
	before :each do
		@game = BowlingGame.new
	end

  it 'scores a game of gutter rolls' do
    20.times do 
      @game.roll(0)
    end

    expect(@game.score).to eq(0)
  end

  it 'scores a game of single pin rolls' do
    20.times do
      @game.roll(1)
    end
    
    expect(@game.score).to eq(20)
  end

  it 'scores a spare' do
    @game.roll(5)
    @game.roll(5)
    @game.roll(4)
    17.times { @game.roll(0) }
    expect(@game.score).to eq(18)
  end

  it 'scores a strike' do
    @game.roll(10)
    @game.roll(6)
    @game.roll(2)
    17.times { @game.roll(0) }
    expect(@game.score).to eq(26)
  end

  it 'scores a perfect game' do
    12.times do
      @game.roll(10)
    end
    @game.score.should == 300
  end


end














