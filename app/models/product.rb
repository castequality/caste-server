class Product < ActiveRecord::Base
  def self.random
    order("RANDOM()").first || OpenStruct.new
  end
end
