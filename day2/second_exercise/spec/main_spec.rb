# frozen_string_literal: true
require_relative '../main'

describe CubesGame do
  describe '#sum_ids_of_games_with_enough_cubes' do
    it 'should return sum of all the games who use an available amout of cubes' do
      data_set = File.read('data/game_data.txt')
      expect(CubesGame.new(data_set).sum_ids_of_games_with_enough_cubes).to eq(2716)
    end
  end

  describe '#sum_powered_cubes' do
    it 'should return sum of the powers of the minimum amount of cubes needed' do
      data_set = File.read('data/game_spec_data.txt')
      expect(CubesGame.new(data_set).sum_powered_cubes).to eq 2286
    end
  end
end
