require 'colorize'
require_relative 'lib/cubes_game'
require_relative 'lib/games'
require_relative 'lib/game'
require_relative 'lib/sets'
require_relative 'lib/set'
require_relative 'lib/cubes'

data_set = File.read('data/game_data.txt')

cube_game = CubesGame.new(data_set)

puts 'Hello AoC !'.yellow
puts "Totaled ids of possible games : #{cube_game.sum_ids_of_games_with_enough_cubes}".green
puts "Totaled powers of minimum necessary cubes ! #{cube_game.sum_powered_cubes}".light_green
puts 'Goodbye !'.yellow
