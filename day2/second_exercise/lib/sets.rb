require 'pry-byebug'
class Sets
  def initialize(sets_data)
    @sets_data = sets_data.split(/;/)
    @sets = @sets_data.map { |set_data| Set.new(set_data) }
  end

  def possible_sets?
    @sets.map(&:possible?).all?(true)
  end

  alias possible? possible_sets?

  def power_of_minimum_cubes_possible
    minimum_cubes_possible_per_color.reduce(1) do |acc, curr|
      acc *= curr.amount
      acc
    end
  end

  private

  def minimum_cubes_possible_per_color
    @sets.map(&:cubes)
         .flatten
         .sort_by(&:amount)
         .reverse
         .uniq(&:color)
  end
end
