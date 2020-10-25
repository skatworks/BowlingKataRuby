# coding: cp932
require "spec_helper"
require "Game"

RSpec.describe Game do

  # テスト内で使用するGameインスタンス生成
  let(:game){
    Game.new
  }

  # ガターの場合
  context 'gutter game' do
    it do
      roll_many(20, 0)
      expect(game.get_score).to eq 0
    end
  end

  # すべて1ピンだった場合
  context '1pins game' do
    it do
      roll_many(20, 1)
      expect(game.get_score).to eq 20
    end
  end

  # スペアだった場合
  context 'spare game' do
    it do
      game.roll(5)
      game.roll(5)
      game.roll(3)
      game.roll(4)
      roll_many(16, 0)
      expect(game.get_score).to eq 20
    end
  end

  # ストライクだった場合
  context 'strike game' do
    it do
      game.roll(10)
      game.roll(3)
      game.roll(4)
      roll_many(17, 0)
      expect(game.get_score).to eq 24
    end
  end

  # パーフェクトゲームだった場合
  context 'perfect game' do
    it do
      roll_many(12, 10)
      expect(game.get_score).to eq 300
    end
  end
  
  # 繰り返し同じピン数を倒すメソッド
  def roll_many(n, pins)
    n.times {
      game.roll(pins)
    }
  end
  
end
