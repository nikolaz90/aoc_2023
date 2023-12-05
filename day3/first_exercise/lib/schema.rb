require_relative 'schema_number'

class Schema
  attr_reader :schema

  def initialize(raw_data)
    @schema = raw_data.split(/\n/)
  end

  def sum_of_part_numbers
    part_numbers.sum
  end

  private

  def part_numbers
    nums_to_check = []
    @schema.each_with_index do |line, li_index|
      line.length.times do |ch_index|
        if line[ch_index].match(/\d/) && line[ch_index - 1].match(/\D/)
          sch_num = SchemaNumber.new([ch_index, li_index], @schema)
          nums_to_check << sch_num.number.to_i if sch_num.part_number?
        end
      end
    end
    nums_to_check
  end
end
