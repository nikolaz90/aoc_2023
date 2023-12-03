class Set
  attr_reader :cubes

  def initialize(set_data)
    @cubes = set_data.split(/,/).map { |cubes| Cubes.new(cubes) }
  end

  def possible_set?
    @cubes.map(&:possible?).all?(true)
  end

  alias possible? possible_set?
end
