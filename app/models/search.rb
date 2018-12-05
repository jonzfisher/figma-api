class Search < ApplicationRecord
  attribute :sample_space, default: []
  attribute :value, default: ""
  attribute :results

  def results 
    sample_space.select{ |node| node&.name.include? value.to_s }
  end
end
