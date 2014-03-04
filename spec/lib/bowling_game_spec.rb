require 'bowling_game'

describe BowlingGame do
	before :each do
		@game = BowlingGame.new
	end

  xit 'scores a game of gutter rolls' do
    20.times { @game.roll(0) }

    expect(@game.score).to eq 0
  end

  xit 'scores a game of single pin rolls' do
  end

  xit 'scores a spare' do
  end

  xit 'scores a strike' do
  end

  xit 'scores a perfect game' do
  end


end














