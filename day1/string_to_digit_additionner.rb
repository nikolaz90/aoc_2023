class StringToDigitAdditionner
  def initialize(raw_string)
    @strings = split_strings(raw_string)
  end

  def sums
    @strings.map { |str| sum_numbers_to_i(str.scan(/\d/)) }
  end

  def total
    sums.sum
  end

  private

  def sum_numbers_to_i(numbers_to_sum)
    (numbers_to_sum.first + numbers_to_sum.last).to_i
  end

  def find_digits(str)
    str.scan(/\d/)
  end

  def split_strings(str)
    str.split(/\n/)
  end
end
