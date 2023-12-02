class Cubes
  TOTAL_CUBES = {
    red: 12,
    green: 13,
    blue: 14
  }.freeze

  def initialize(cubes_str)
    regex_match = cubes_str.match(/(.\d{0,}) (\D{0,})/)
    @amount = regex_match[1].to_i
    @color = regex_match[2].to_sym
  end

  def possible_amount?
    @amount <= TOTAL_CUBES[@color]
  end

  alias possible? possible_amount?
end
