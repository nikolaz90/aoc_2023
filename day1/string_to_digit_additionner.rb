class StringToDigitAdditionner
  def initialize(raw_string)
    @strings = raw_string.split(/\n/)
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
end
