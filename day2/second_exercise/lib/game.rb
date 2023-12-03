class Game
  attr_reader :id

  def initialize(game_data)
    @id = game_data.match(/(Game )(\d{0,})(:)/)[2].to_i
    @sets = Sets.new(game_data.gsub(/Game \d{0,}: /, ''))
  end

  def possible_game?
    @sets.possible?
  end

  alias possible? possible_game?

  def power_of_minimum_cubes_possible
    @sets.power_of_minimum_cubes_possible
  end
end
