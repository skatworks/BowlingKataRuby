require "spec_helper"
require "Game"

RSpec.describe Game do

  context 'gutter game' do
    it do
      game = Game.new
      20.times {
        game.roll(0)
      }
      expect(game.get_score).to eq 0
    end
  end

  context '1pins game' do
    it do
      game = Game.new
      20.times {
        game.roll(1)
      }
      expect(game.get_score).to eq 20
    end
  end
  

end
