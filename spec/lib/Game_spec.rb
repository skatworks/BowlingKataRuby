# coding: cp932
require "spec_helper"
require "Game"

RSpec.describe Game do

  # �e�X�g���Ŏg�p����Game�C���X�^���X����
  let(:game){
    Game.new
  }

  # �K�^�[�̏ꍇ
  context 'gutter game' do
    it do
      roll_many(20, 0)
      expect(game.get_score).to eq 0
    end
  end

  # ���ׂ�1�s���������ꍇ
  context '1pins game' do
    it do
      roll_many(20, 1)
      expect(game.get_score).to eq 20
    end
  end

  # �X�y�A�������ꍇ
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

  # �X�g���C�N�������ꍇ
  context 'strike game' do
    it do
      game.roll(10)
      game.roll(3)
      game.roll(4)
      roll_many(17, 0)
      expect(game.get_score).to eq 24
    end
  end

  # �p�[�t�F�N�g�Q�[���������ꍇ
  context 'perfect game' do
    it do
      roll_many(12, 10)
      expect(game.get_score).to eq 300
    end
  end
  
  # �J��Ԃ������s������|�����\�b�h
  def roll_many(n, pins)
    n.times {
      game.roll(pins)
    }
  end
  
end
