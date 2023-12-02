class Sets
  def initialize(sets_data)
    @sets_data = sets_data.split(/;/)
    @sets = @sets_data.map { |set_data| Set.new(set_data) }
  end

  def possible_sets?
    @sets.map(&:possible?).all?(true)
  end

  alias possible? possible_sets?
end
