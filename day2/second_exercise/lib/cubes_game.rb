class CubesGame
  def initialize(raw_string)
    @games = Games.new(raw_string)
    @total_cubes = Cubes::TOTAL_CUBES
  end

  def sum_ids_of_games_with_enough_cubes
    @games.sum_ids_of_possible_games
  end
end
