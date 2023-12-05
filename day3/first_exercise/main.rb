require_relative 'lib/schema'

data_set = File.read('data/schema_data.txt')

puts Schema.new(data_set).sum_of_part_numbers
