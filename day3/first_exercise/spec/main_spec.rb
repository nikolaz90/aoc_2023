# frozen_string_literal: true
require_relative '../main'

describe Schema do
  describe "#sum_of_part_numbers" do
    it "if given the schema data it should return 559667" do
      data_input = File.read('data/schema_data.txt')
      expect(Schema.new(data_input).sum_of_part_numbers).to eq(559667)
    end
  end
end
