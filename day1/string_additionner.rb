require 'pry-byebug'
class StringAdditionner
  NUM_REGEX = /\d|(one|two|three|four|five|six|seven|eight|nine)/.freeze
  STRING_NUMBER_MAP = {
    'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6',
    'seven' => '7', 'eight' => '8', 'nine' => '9', '1' => '1', '2' => '2', '3' => '3',
    '4' => '4', '5' => '5', '6' => '6', '7' => '7', '8' => '8', '9' => '9'
  }.freeze

  def initialize(raw_string)
    @strings = raw_string.split(/\n/)
  end

  def sums
    @strings.map do |str|
      str_numbers_array = [
        first_match(str),
        last_match(str)
      ]
      sum_numbers_to_i(str_numbers_array)
    end
  end

  def total
    sums.sum
  end

  private

  def first_match(str)
    str.match(NUM_REGEX)[0]
  end

  def last_match(str)
    match_str = ''
    str.length.times do |index|
      index += 1 # allows reverse matching not to start from 0 but also to finish at plus 1
      match = str[-index..].match(NUM_REGEX)
      match_str = match[0] if match
      break if match
    end
    match_str
  end

  def sum_numbers_to_i(numbers_to_sum)
    (
      STRING_NUMBER_MAP[numbers_to_sum.first] +
      STRING_NUMBER_MAP[numbers_to_sum.last]
    ).to_i
  end
end
