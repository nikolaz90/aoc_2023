class SchemaNumber
  attr_reader :coordinates, :schema, :number

  def initialize(first_digit_coordinates, schema)
    @schema = schema
    @x = first_digit_coordinates.first
    @y = first_digit_coordinates.last
    @number = @schema[@y][@x..].match(/\d{0,4}/)[0]
    @length = @number.length
  end

  def part_number?
    check_adjacents_for_symbols.join('').match?(/[&~#\/|`\^@=+à\-ç_è*'$%"&]/)
  end

  def check_adjacents_for_symbols
    y_range = y_start_stop_check_at
    x_range = x_start_stop_check_at
    y_range.to_a.map { |y_index| @schema[y_index][x_range] }.flatten
  end

  private

  def x_start_stop_check_at
    (x_start_check_at..x_stop_check_at)
  end

  def y_start_stop_check_at
    (y_start_check_at..y_stop_check_at)
  end

  def x_start_check_at
    @x.positive? ? (@x - 1) : 0
  end

  def y_start_check_at
    @y.positive? ? (@y - 1) : 0
  end

  def x_stop_check_at
    (@x + @length) >= @schema.first.length ? @schema.first.length - 1 : (@x + @length)
  end

  def y_stop_check_at
    @y >= (@schema.length - 1) ? @y : @y + 1
  end
end
