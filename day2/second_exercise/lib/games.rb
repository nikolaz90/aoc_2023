class Games
  def initialize(raw_string)
    @games_data = raw_string.split(/\n/)
    @games = @games_data.map { |game_data| Game.new(game_data) }
  end

  def sum_ids_of_possible_games
    @games.reduce(0) do |acc, curr|
      acc += curr.id if curr.possible?
      acc
    end
  end

  def necessary_amount_of_cubes_sum_powers
    @games.map(&:power_of_minimum_cubes_possible).sum
  end
end
